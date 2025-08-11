// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_admin_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UserAdminState {
  Status get status => throw _privateConstructorUsedError;
  List<UserModel> get users => throw _privateConstructorUsedError;

  /// Create a copy of UserAdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAdminStateCopyWith<UserAdminState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAdminStateCopyWith<$Res> {
  factory $UserAdminStateCopyWith(
    UserAdminState value,
    $Res Function(UserAdminState) then,
  ) = _$UserAdminStateCopyWithImpl<$Res, UserAdminState>;
  @useResult
  $Res call({Status status, List<UserModel> users});
}

/// @nodoc
class _$UserAdminStateCopyWithImpl<$Res, $Val extends UserAdminState>
    implements $UserAdminStateCopyWith<$Res> {
  _$UserAdminStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAdminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? users = null}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            users: null == users
                ? _value.users
                : users // ignore: cast_nullable_to_non_nullable
                      as List<UserModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserAdminStateImplCopyWith<$Res>
    implements $UserAdminStateCopyWith<$Res> {
  factory _$$UserAdminStateImplCopyWith(
    _$UserAdminStateImpl value,
    $Res Function(_$UserAdminStateImpl) then,
  ) = __$$UserAdminStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<UserModel> users});
}

/// @nodoc
class __$$UserAdminStateImplCopyWithImpl<$Res>
    extends _$UserAdminStateCopyWithImpl<$Res, _$UserAdminStateImpl>
    implements _$$UserAdminStateImplCopyWith<$Res> {
  __$$UserAdminStateImplCopyWithImpl(
    _$UserAdminStateImpl _value,
    $Res Function(_$UserAdminStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserAdminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? users = null}) {
    return _then(
      _$UserAdminStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        users: null == users
            ? _value._users
            : users // ignore: cast_nullable_to_non_nullable
                  as List<UserModel>,
      ),
    );
  }
}

/// @nodoc

class _$UserAdminStateImpl implements _UserAdminState {
  const _$UserAdminStateImpl({
    this.status = Status.initial,
    final List<UserModel> users = const [],
  }) : _users = users;

  @override
  @JsonKey()
  final Status status;
  final List<UserModel> _users;
  @override
  @JsonKey()
  List<UserModel> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UserAdminState(status: $status, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAdminStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_users),
  );

  /// Create a copy of UserAdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAdminStateImplCopyWith<_$UserAdminStateImpl> get copyWith =>
      __$$UserAdminStateImplCopyWithImpl<_$UserAdminStateImpl>(
        this,
        _$identity,
      );
}

abstract class _UserAdminState implements UserAdminState {
  const factory _UserAdminState({
    final Status status,
    final List<UserModel> users,
  }) = _$UserAdminStateImpl;

  @override
  Status get status;
  @override
  List<UserModel> get users;

  /// Create a copy of UserAdminState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAdminStateImplCopyWith<_$UserAdminStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
