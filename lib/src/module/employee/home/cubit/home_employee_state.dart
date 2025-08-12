part of 'home_employee_cubit.dart';

@freezed
class HomeEmployeeState with _$HomeEmployeeState {
  const factory HomeEmployeeState({
    @Default(Status.initial) Status status,
    @Default([]) List<CollectionRoleModel> collection,
    double? latitude,
    double? longitude,
    MapType? mapType,
    @Default(<Marker>{}) Set<Marker> markers,
    @Default("") String selectedCustomerName,
  }) = _HomeEmployeeState;
}
