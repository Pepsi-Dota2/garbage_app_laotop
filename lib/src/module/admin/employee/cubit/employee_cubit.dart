import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/models/employee_model.dart' show EmployeeModel;

import '../../../../core/models/employee_model.dart' show EmployeeModel, $EmployeeModelCopyWith;

part 'employee_state.dart';
part 'employee_cubit.freezed.dart';

class EmployeeCubit extends Cubit<EmployeeState> {
  EmployeeCubit() : super(EmployeeState());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  //get all
  Future<void> getAllEmployee() async {
    emit(state.copyWith(status: Status.loading));
    try {
      final querySnapshot = await FirebaseFirestore.instance.collection('employee').get();

      final employees = querySnapshot.docs.map((doc) {
        final data = doc.data();
        return EmployeeModel.fromJson(data).copyWith(uid: doc.id);
      }).toList();

      emit(state.copyWith(status: Status.success, employees: employees));
    } catch (e) {
      print('Error fetching employees: $e');
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> loadEmployeeById(String uid) async {
    try {
      emit(state.copyWith(status: Status.loading));
      final doc = await FirebaseFirestore.instance.collection('employee').doc(uid).get();
      if (doc.exists) {
        final data = doc.data()!;
        final employee = EmployeeModel.fromJson(data);
        nameController.text = employee.name;
        emailController.text = employee.email;
        emit(state.copyWith(status: Status.success, employee: employee));
      } else {
        emit(state.copyWith(status: Status.failure));
      }
    } catch (e) {
      print('Error loading employee: $e');
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> updateEmployee({required String uid, required String name}) async {
    emit(state.copyWith(status: Status.loading));
    try {
      final employeeDoc = FirebaseFirestore.instance.collection('employee').doc(uid);
      await employeeDoc.update({'name': name, 'updated_at': FieldValue.serverTimestamp()});
      emit(state.copyWith(status: Status.success));
    } catch (e) {
      print('Error updating employee: $e');
      emit(state.copyWith(status: Status.failure));
    }
  }

  //create employee
  Future<void> createEmployee({required String name, required String email, required String password, String role = 'employee'}) async {
    emit(state.copyWith(status: Status.loading));
    try {
      final userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.trim(), password: password.trim());
      final user = userCredential.user;
      if (user == null) {
        emit(state.copyWith(status: Status.failure));
        return;
      }
      await user.updateDisplayName(name.trim());

      final employeeDoc = FirebaseFirestore.instance.collection('employee').doc(user.uid);
      await employeeDoc.set({'uid': user.uid, 'name': name.trim(), 'email': email.trim(), 'role': role, 'created_at': FieldValue.serverTimestamp()});

      emit(state.copyWith(status: Status.success));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  //delete employee
  Future<void> deleteEmployee(String id) async {}
}
