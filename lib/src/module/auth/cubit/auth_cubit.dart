import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/helper/token_storage.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Future<void> login(String email, String password) async {
    final trimmedEmail = email.trim();
    final trimmedPassword = password.trim();
    if (trimmedEmail.isEmpty || trimmedPassword.isEmpty) {
      emit(state.copyWith(status: Status.failure));
      return;
    }
    try {
      emit(state.copyWith(status: Status.loading));
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: trimmedEmail, password: trimmedPassword);
      final user = credential.user;
      if (user == null) {
        emit(state.copyWith(status: Status.failure));
        return;
      }
      final token = await user.getIdToken();
      if (token != null) {
        await TokenStorage.saveAccessToken(token);
      }
      final doc = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
      final role = doc.data()?['role'] as String? ?? 'user';
      await TokenStorage.saveUserRole(role);
      emit(state.copyWith(status: Status.success, user: user, role: role));
    } catch (e) {
      emit(state.copyWith(status: Status.error));
    }
  }
}
