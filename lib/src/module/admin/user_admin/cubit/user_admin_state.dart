part of 'user_admin_cubit.dart';

@freezed
class UserAdminState with _$UserAdminState {
  const factory UserAdminState({@Default(Status.initial) Status status, @Default([]) List<UserModel> users}) = _UserAdminState;
}
