part of 'report_admin_cubit.dart';

@freezed
class ReportAdminState with _$ReportAdminState {
  const factory ReportAdminState({@Default(Status.initial) Status status}) = _ReportAdminState;
}
