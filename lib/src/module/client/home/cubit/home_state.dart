part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(Status.initial) Status status,
    UserModel? user,
    @Default([]) List<CollectionScheduleModel> schedules,
    @Default([]) List<CollectionRoleModel> collection,
    @Default('') String collectionRoleStatus,
    @Default('') String selectedCustomerName,
  }) = _HomeState;
}
