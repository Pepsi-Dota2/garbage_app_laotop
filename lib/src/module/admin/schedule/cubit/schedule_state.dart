part of 'schedule_cubit.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState({@Default(Status.initial) Status status, @Default([]) List<CollectionScheduleModel> schedules}) = _ScheduleState;
}
