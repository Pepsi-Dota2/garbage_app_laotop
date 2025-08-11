part of 'zone_admin_cubit.dart';

@freezed
class ZoneAdminState with _$ZoneAdminState {
  const factory ZoneAdminState({
    @Default(Status.initial) Status status,
    @Default([]) List<DistrictModel> district,
    UserModel? selectedUser,
    @Default([]) List<UserModel> users,
    UserModel? user,
  }) = _ZoneAdminState;
}
