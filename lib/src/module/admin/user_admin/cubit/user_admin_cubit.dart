import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/models/user_model.dart';

part 'user_admin_state.dart';
part 'user_admin_cubit.freezed.dart';

class UserAdminCubit extends Cubit<UserAdminState> {
  UserAdminCubit() : super(UserAdminState());
  final TextEditingController addressController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController telController = TextEditingController();
  Future<List<UserModel>> getAllUsers() async {
    try {
      QuerySnapshot snapshot = await FirebaseFirestore.instance.collection('users').get();

      List<UserModel> users = snapshot.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>;
        return UserModel.fromJson(data).copyWith(uid: doc.id, username: data['username']);
      }).toList();

      return users;
    } catch (e) {
      print("Error getting users: $e");
      return [];
    }
  }

  Future<void> fetchAllUsers() async {
    emit(state.copyWith(status: Status.loading));
    try {
      final users = await getAllUsers();
      print('Fetched users count: ${users.length}');
      emit(state.copyWith(status: Status.success, users: users));
    } catch (e) {
      print('Error in fetchAllUsers: $e');
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> editUser({required String id, required String username, required String userTel, required String userAddress}) async {
    emit(state.copyWith(status: Status.loading));
    try {
      final updatedData = {
        'username': username.trim(),
        'user_tel': userTel.trim(),
        'address': userAddress.trim(),
        'updatedAt': FieldValue.serverTimestamp(),
      };
      await FirebaseFirestore.instance.collection('users').doc(id).set(updatedData, SetOptions(merge: true));

      final users = await getAllUsers();
      emit(state.copyWith(status: Status.success, users: users));
    } catch (e) {
      print('Error updating user: $e');
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<UserModel?> getUserById(String id) async {
    try {
      DocumentSnapshot doc = await FirebaseFirestore.instance.collection('users').doc(id).get();

      if (!doc.exists) {
        print('User with id $id does not exist');
        return null;
      }

      final data = doc.data() as Map<String, dynamic>;
      return UserModel.fromJson(data).copyWith(uid: doc.id, username: data['username']);
    } catch (e) {
      print('Error getting user by id: $e');
      return null;
    }
  }

  Future<void> fetchUserById(String id) async {
    emit(state.copyWith(status: Status.loading));
    try {
      final user = await getUserById(id);
      if (user == null) {
        emit(state.copyWith(status: Status.failure));
        return;
      }
      usernameController.text = user.username;
      telController.text = user.user_tel;
      addressController.text = user.address;

      emit(state.copyWith(status: Status.success));
    } catch (e) {
      print('Error fetching user by id: $e');
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<bool> deleteUser(String id) async {
    emit(state.copyWith(status: Status.loading));
    try {
      await FirebaseFirestore.instance.collection('users').doc(id).delete();
      final users = await getAllUsers();
      emit(state.copyWith(status: Status.success, users: users));
      return true;
    } catch (e) {
      print('Error deleting user: $e');
      emit(state.copyWith(status: Status.failure));
      return false;
    }
  }
}
