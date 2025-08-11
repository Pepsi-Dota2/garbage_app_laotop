import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/models/district_model.dart';
import 'package:hr_app/src/core/models/user_model.dart';

part 'zone_admin_state.dart';
part 'zone_admin_cubit.freezed.dart';

class ZoneAdminCubit extends Cubit<ZoneAdminState> {
  ZoneAdminCubit() : super(ZoneAdminState());
  final TextEditingController zoneNameController = TextEditingController();
  final TextEditingController districtController = TextEditingController();
  final TextEditingController populationController = TextEditingController();
  Future<void> getZonesForUser(String userId) async {
    emit(state.copyWith(status: Status.loading));
    try {
      // Get user info
      final userDoc = await FirebaseFirestore.instance.collection('users').doc(userId).get();
      final user = userDoc.exists ? UserModel.fromJson(userDoc.data()!) : null;
      final snapshot = await FirebaseFirestore.instance.collection('districts').where('uid', isEqualTo: userId).get();
      final district = snapshot.docs.map((doc) => DistrictModel.fromJson(doc.data())).toList();
      emit(state.copyWith(status: Status.success, district: district, user: user));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> getAllZones() async {
    emit(state.copyWith(status: Status.loading));
    try {
      final snapshot = await FirebaseFirestore.instance.collection('districts').get();

      final district = snapshot.docs.map((doc) => DistrictModel.fromJson(doc.data())).toList();

      emit(state.copyWith(status: Status.success, district: district));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> createZone(DistrictModel newZone) async {
    emit(state.copyWith(status: Status.loading));
    try {
      await FirebaseFirestore.instance.collection('districts').add({
        'id': newZone.id,
        'zone_name': newZone.zone_name,
        'district': newZone.district,
        'population': newZone.population,
        'created_at': newZone.created_at?.toIso8601String() ?? DateTime.now().toIso8601String(),
        'uid': newZone.uid,
      });

      if (newZone.uid != null) {
        await getZonesForUser(newZone.uid!);
      } else {
        emit(state.copyWith(status: Status.success));
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  void selectUser(UserModel? user) {
    emit(state.copyWith(selectedUser: user));
  }

  Future<List<UserModel>> getCustomers() async {
    final snapshot = await FirebaseFirestore.instance.collection('users').where('role', isEqualTo: 'user').get();
    return snapshot.docs.map((doc) {
      final data = doc.data();
      return UserModel.fromJson(data).copyWith(uid: doc.id);
    }).toList();
  }

  Future<void> fetchAllUsers() async {
    emit(state.copyWith(status: Status.loading));
    try {
      final users = await getCustomers();
      print('Fetched users count: ${users.length}');
      emit(state.copyWith(status: Status.success, users: users));
    } catch (e) {
      print('Error in fetchAllUsers: $e');
      emit(state.copyWith(status: Status.failure));
    }
  }
}
