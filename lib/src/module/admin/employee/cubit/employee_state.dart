part of 'employee_cubit.dart';

@freezed
class EmployeeState with _$EmployeeState {
  const factory EmployeeState({@Default(Status.initial) Status status, EmployeeModel? employee, @Default([]) List<EmployeeModel> employees}) =
      _EmployeeState;
}
