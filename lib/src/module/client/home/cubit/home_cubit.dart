import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/models/collection_role_model.dart';
import 'package:hr_app/src/core/models/collection_schedule_model.dart';
import 'package:hr_app/src/core/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());

  Future<void> getCurrentUserFromFirestore() async {
    try {
      final authUser = FirebaseAuth.instance.currentUser;

      if (authUser == null) {
        print('No authenticated user found');
        emit(state.copyWith(status: Status.failure));
        return;
      }

      final docSnapshot = await FirebaseFirestore.instance.collection('users').doc(authUser.uid).get();

      if (!docSnapshot.exists) {
        print('User document not found for uid: ${authUser.uid}');
        emit(state.copyWith(status: Status.failure));
        return;
      }

      final data = docSnapshot.data();
      if (data == null) {
        print('User document data is null for uid: ${authUser.uid}');
        emit(state.copyWith(status: Status.failure));
        return;
      }

      // Make sure UserModel.fromJson accepts Map<String, dynamic>
      final userModel = UserModel.fromJson(Map<String, dynamic>.from(data)).copyWith(uid: docSnapshot.id);

      emit(state.copyWith(status: Status.success, user: userModel));
    } catch (e, st) {
      print('Exception in getCurrentUserFromFirestore: $e\n$st');
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> fetchSchedules() async {
    emit(state.copyWith(status: Status.loading));
    try {
      final snapshot = await FirebaseFirestore.instance.collection('collection_schedules').get();
      final schedules = snapshot.docs.map((doc) {
        final data = Map<String, dynamic>.from(doc.data());
        return CollectionScheduleModel.fromJson(data);
      }).toList();

      emit(state.copyWith(status: Status.success, schedules: schedules));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> fetchUserCollections() async {
    emit(state.copyWith(status: Status.loading));
    try {
      final prefs = await SharedPreferences.getInstance();
      final userId = prefs.getString('userId');

      if (userId == null) {
        emit(state.copyWith(status: Status.error));
        return;
      }

      final querySnapshot = await FirebaseFirestore.instance.collection('collection_role').where('userId', isEqualTo: userId).get();

      final collectionList = querySnapshot.docs.map((doc) {
        return CollectionRoleModel.fromJson(doc.data());
      }).toList();

      emit(state.copyWith(status: Status.success, collection: collectionList));
    } catch (e) {
      print('Error fetching collections list: $e');
      emit(state.copyWith(status: Status.error));
    }
  }
}
