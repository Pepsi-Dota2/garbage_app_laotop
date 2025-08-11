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
  final TextEditingController addressController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController telController = TextEditingController();
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

  Future<void> register({
    required String email,
    required String password,
    required String username,
    required String userTel,
    required String userAddress,
  }) async {
    try {
      emit(state.copyWith(status: Status.loading));
      final registerResult = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.trim(), password: password.trim());

      final user = registerResult.user;
      if (user == null) {
        emit(state.copyWith(status: Status.failure));
        return;
      }
      await user.updateDisplayName(username.trim());
      await user.reload();
      final userData = {
        'email': email.trim(),
        'username': username.trim().toLowerCase(),
        'user_tel': userTel.trim(),
        'address': userAddress.trim(),
        'createdAt': FieldValue.serverTimestamp(),
        'uid': user.uid,
        'role': 'user',
      };
      await FirebaseFirestore.instance.collection('users').doc(user.uid).set(userData);
      emit(state.copyWith(status: Status.success, user: user, role: 'user'));
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(status: Status.failure));
    } catch (e) {
      emit(state.copyWith(status: Status.error));
    }
  }
}
