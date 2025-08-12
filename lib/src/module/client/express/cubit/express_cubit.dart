import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'express_state.dart';
part 'express_cubit.freezed.dart';

class ExpressCubit extends Cubit<ExpressState> {
  ExpressCubit() : super(ExpressState());
  GoogleMapController? mapController;
  Future<String?> getUserName() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return null;
    final doc = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
    if (!doc.exists) return null;

    final data = doc.data();
    if (data?['role'] != 'user') {
      return null;
    }
    return data?['username'] as String?;
  }

  Future<void> getCurrentLocation() async {
    emit(state.copyWith(status: Status.loading));
    try {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
          emit(state.copyWith(status: Status.failure));
          throw Exception("User denied permissions");
        }
      }

      final position = await Geolocator.getCurrentPosition();

      final prefs = await SharedPreferences.getInstance();
      await prefs.setDouble('latitude', position.latitude);
      await prefs.setDouble('longitude', position.longitude);
      final userName = await getUserName();

      final marker = Marker(
        markerId: const MarkerId('marker1'),
        position: LatLng(position.latitude, position.longitude),
        infoWindow: InfoWindow(title: userName ?? 'Unknown User'),
      );

      emit(state.copyWith(status: Status.success, latitude: position.latitude, longitude: position.longitude, markers: {marker}));

      mapController?.animateCamera(CameraUpdate.newLatLngZoom(LatLng(position.latitude, position.longitude), 14));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
      throw Exception("Failed to get location: $e");
    }
  }

  Future<void> loadCachedLocation() async {
    final prefs = await SharedPreferences.getInstance();
    final latitude = prefs.getDouble('latitude');
    final longitude = prefs.getDouble('longitude');

    if (latitude != null && longitude != null) {
      final userName = await getUserName();
      final marker = Marker(
        markerId: const MarkerId('cached_marker'),
        position: LatLng(latitude, longitude),
        infoWindow: InfoWindow(title: userName ?? 'Unknown User'),
      );
      emit(state.copyWith(latitude: latitude, longitude: longitude, markers: {marker}));
    } else {
      print('No cached location found in SharedPreferences.');
    }
  }

  void onMapCreated(GoogleMapController controller, {double? shopLat, double? shopLng, String? shopName}) {
    mapController = controller;
    if (shopLat != null && shopLng != null && shopLat != 0.0 && shopLng != 0.0) {
      final marker = Marker(
        markerId: const MarkerId('shop_location'),
        position: LatLng(shopLat, shopLng),
        infoWindow: InfoWindow(title: shopName ?? 'Shop Location'),
      );
      emit(state.copyWith(markers: {marker}));
      mapController?.animateCamera(CameraUpdate.newLatLngZoom(LatLng(shopLat, shopLng), 14));
    } else {
      getCurrentLocation();
    }
  }

  void switchMapType() {
    emit(state.copyWith(mapType: state.mapType == MapType.normal ? MapType.satellite : MapType.normal));
  }

  Future<void> saveExpressData({required double latitude, required double longitude}) async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) {
      throw Exception('No authenticated user');
    }

    final userDoc = FirebaseFirestore.instance.collection('users').doc(currentUser.uid);
    final collectionRoleCol = FirebaseFirestore.instance.collection('collection_role');
    final docRef = collectionRoleCol.doc(currentUser.uid); // userId as docId

    try {
      // Update user's location
      await userDoc.set({'latitude': latitude, 'longitude': longitude}, SetOptions(merge: true));

      final userName = await getUserName();

      await docRef.set({
        'id': currentUser.uid, // same as doc id
        'userId': currentUser.uid,
        'username': userName,
        'name': 'express',
        'normalPrice': 0,
        'expressPrice': 200000,
        'latitude': latitude,
        'longitude': longitude,
        'createdAt': FieldValue.serverTimestamp(),
        'status': 'pending',
      });
    } catch (e) {
      print('Failed to save express data: $e');
      rethrow;
    }
  }
}

// ElevatedButton(
//   onPressed: () async {
//     await acceptExpressRequest(requestDocId); // Pass the Firestore doc ID
//   },
//   child: const Text('Accept'),
// )

//  How to get the docId
// final snapshot = await FirebaseFirestore.instance
//     .collection('collection_role')
//     .where('status', isEqualTo: 'pending')
//     .get();

// for (var doc in snapshot.docs) {
//   print("Request ID: ${doc.id}"); // This is what you'll use for acceptExpressRequest
// }
