part of 'analysis_cubit.dart';

@freezed
class AnalysisState with _$AnalysisState {
  const factory AnalysisState({
    @Default(Status.initial) Status status,
    @Default([]) List<UserModel> users,
    @Default([]) List<CollectionRoleModel> colletion,
  }) = _AnalysisState;
}
