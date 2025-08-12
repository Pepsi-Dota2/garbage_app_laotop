import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/helper/token_storage.dart';

part 'profile_admin_state.dart';
part 'profile_admin_cubit.freezed.dart';

class ProfileAdminCubit extends Cubit<ProfileAdminState> {
  ProfileAdminCubit() : super(ProfileAdminState());
  Future<void> logout() async {
    try {
      // Remove tokens & role from SharedPreferences
      await TokenStorage.clear();
      // Sign out from Firebase
      await FirebaseAuth.instance.signOut();

      emit(state.copyWith(status: Status.success));
    } on FirebaseAuthException catch (profile) {
      emit(state.copyWith(status: Status.failure));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }
}
