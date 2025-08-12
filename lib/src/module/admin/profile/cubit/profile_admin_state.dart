part of 'profile_admin_cubit.dart';

@freezed
class ProfileAdminState with _$ProfileAdminState {
  const factory ProfileAdminState({@Default(Status.initial) Status status}) = _ProfileAdminState;
}
