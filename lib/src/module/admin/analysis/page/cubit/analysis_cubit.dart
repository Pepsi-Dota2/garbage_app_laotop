import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/models/collection_role_model.dart';
import 'package:hr_app/src/core/models/user_model.dart';

part 'analysis_state.dart';
part 'analysis_cubit.freezed.dart';

class AnalysisCubit extends Cubit<AnalysisState> {
  AnalysisCubit() : super(AnalysisState());

  Future<List<UserModel>> getAllUsers() async {
    try {
      QuerySnapshot snapshot = await FirebaseFirestore.instance.collection('users').get();

      List<UserModel> users = snapshot.docs
          .map((doc) {
            final data = doc.data() as Map<String, dynamic>;
            return UserModel.fromJson(data).copyWith(uid: doc.id, username: data['username'], role: data['role']);
          })
          .where((user) => user.role.toLowerCase() != 'admin')
          .toList();

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

  Future<List<CollectionRoleModel>> getAllCollectionRoles() async {
    try {
      QuerySnapshot snapshot = await FirebaseFirestore.instance.collection('collection_role').get();

      List<CollectionRoleModel> collectionRoles = snapshot.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>;
        return CollectionRoleModel.fromJson(data).copyWith(id: doc.id);
      }).toList();

      return collectionRoles;
    } catch (e) {
      print("Error getting collection roles: $e");
      return [];
    }
  }

  Future<void> fetchUsersAndCollectionRoles() async {
    emit(state.copyWith(status: Status.loading));
    try {
      final users = await getAllUsers();
      final collection = await getAllCollectionRoles();

      emit(state.copyWith(status: Status.success, users: users, colletion: collection));
    } catch (e) {
      print('Error fetching data: $e');
      emit(state.copyWith(status: Status.failure));
    }
  }
}
