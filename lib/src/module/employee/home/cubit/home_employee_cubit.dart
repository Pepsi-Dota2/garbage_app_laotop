import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/models/collection_role_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home_employee_state.dart';
part 'home_employee_cubit.freezed.dart';

class HomeEmployeeCubit extends Cubit<HomeEmployeeState> {
  HomeEmployeeCubit() : super(HomeEmployeeState());
  GoogleMapController? mapController;
  Future<List<CollectionRoleModel>> getPendingCollectionRoles() async {
    try {
      final querySnapshot = await FirebaseFirestore.instance.collection('collection_role').where('status', isEqualTo: 'pending').get();

      final pendingList = querySnapshot.docs.map((doc) {
        final data = doc.data();
        data['userId'] = doc.id;
        return CollectionRoleModel.fromJson(data);
      }).toList();

      return pendingList;
    } catch (e) {
      print('Error getting pending collection roles: $e');
      return [];
    }
  }

  Future<void> fetchPendingRoles() async {
    final pending = await getPendingCollectionRoles();
    emit(state.copyWith(collection: pending));
  }

  Future<void> fetchCustomerDetails({required String userId}) async {
    emit(state.copyWith(status: Status.loading));
    try {
      final userDoc = await FirebaseFirestore.instance.collection('users').doc(userId).get();

      // Query collection_role by userId
      final querySnapshot = await FirebaseFirestore.instance
          .collection('collection_role')
          .where('userId', isEqualTo: userId)
          .where('name', isEqualTo: 'express')
          .limit(1)
          .get();

      final collectionRoleData = querySnapshot.docs.isNotEmpty ? querySnapshot.docs.first.data() : {};

      if (userDoc.exists) {
        final userData = userDoc.data()!;

        final double latitude = (collectionRoleData['latitude'] ?? userData['latitude'])?.toDouble() ?? 0.0;
        final double longitude = (collectionRoleData['longitude'] ?? userData['longitude'])?.toDouble() ?? 0.0;

        emit(
          state.copyWith(status: Status.success, selectedCustomerName: userData['username'] ?? 'No Name', latitude: latitude, longitude: longitude),
        );
      } else {
        emit(state.copyWith(status: Status.error));
      }
    } catch (e) {
      emit(state.copyWith(status: Status.error));
    }
  }

  Future<void> loadCachedLocation() async {
    final prefs = await SharedPreferences.getInstance();
    final latitude = prefs.getDouble('latitude');
    final longitude = prefs.getDouble('longitude');

    if (latitude != null && longitude != null) {
      final marker = Marker(
        markerId: const MarkerId('cached_marker'),
        position: LatLng(latitude, longitude),
        infoWindow: InfoWindow(title: state.selectedCustomerName),
      );
      emit(state.copyWith(latitude: latitude, longitude: longitude, markers: {marker}));
    }
  }

  void switchMapType() {
    final nextMapType = state.mapType == MapType.normal ? MapType.satellite : MapType.normal;
    emit(state.copyWith(mapType: nextMapType));
  }

  Future<void> acceptExpressRequest(String docId) async {
    try {
      await FirebaseFirestore.instance.collection('collection_role').doc(docId).update({
        'status': 'accept',
        'acceptedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      print('Failed to accept request: $e');
      rethrow;
    }
  }

  Future<void> fetchCollectionRoleDetails(String docId) async {
    try {
      final doc = await FirebaseFirestore.instance.collection('collection_role').doc(docId).get();
      if (doc.exists) {
        final data = doc.data()!;
      }
    } catch (e) {
      print("Error fetching collection role details: $e");
    }
  }

  Future<void> acceptJob(String jobId) async {
    try {
      await FirebaseFirestore.instance.collection('collection_role').doc(jobId).update({'status': 'accepted'});

      emit(state.copyWith(status: Status.success));
    } catch (e) {
      emit(state.copyWith(status: Status.error));
      rethrow;
    }
  }
}
