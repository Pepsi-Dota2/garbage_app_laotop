part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({@Default(Status.initial) Status status, User? user, @Default('') String role}) = _AuthState;
}
