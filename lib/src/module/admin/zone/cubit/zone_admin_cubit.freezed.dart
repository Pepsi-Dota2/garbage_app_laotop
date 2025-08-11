// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zone_admin_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ZoneAdminState {
  Status get status => throw _privateConstructorUsedError;
  List<DistrictModel> get district => throw _privateConstructorUsedError;
  UserModel? get selectedUser => throw _privateConstructorUsedError;
  List<UserModel> get users => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;

  /// Create a copy of ZoneAdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ZoneAdminStateCopyWith<ZoneAdminState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZoneAdminStateCopyWith<$Res> {
  factory $ZoneAdminStateCopyWith(
    ZoneAdminState value,
    $Res Function(ZoneAdminState) then,
  ) = _$ZoneAdminStateCopyWithImpl<$Res, ZoneAdminState>;
  @useResult
  $Res call({
    Status status,
    List<DistrictModel> district,
    UserModel? selectedUser,
    List<UserModel> users,
    UserModel? user,
  });

  $UserModelCopyWith<$Res>? get selectedUser;
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$ZoneAdminStateCopyWithImpl<$Res, $Val extends ZoneAdminState>
    implements $ZoneAdminStateCopyWith<$Res> {
  _$ZoneAdminStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ZoneAdminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? district = null,
    Object? selectedUser = freezed,
    Object? users = null,
    Object? user = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            district: null == district
                ? _value.district
                : district // ignore: cast_nullable_to_non_nullable
                      as List<DistrictModel>,
            selectedUser: freezed == selectedUser
                ? _value.selectedUser
                : selectedUser // ignore: cast_nullable_to_non_nullable
                      as UserModel?,
            users: null == users
                ? _value.users
                : users // ignore: cast_nullable_to_non_nullable
                      as List<UserModel>,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as UserModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of ZoneAdminState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get selectedUser {
    if (_value.selectedUser == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.selectedUser!, (value) {
      return _then(_value.copyWith(selectedUser: value) as $Val);
    });
  }

  /// Create a copy of ZoneAdminState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ZoneAdminStateImplCopyWith<$Res>
    implements $ZoneAdminStateCopyWith<$Res> {
  factory _$$ZoneAdminStateImplCopyWith(
    _$ZoneAdminStateImpl value,
    $Res Function(_$ZoneAdminStateImpl) then,
  ) = __$$ZoneAdminStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    List<DistrictModel> district,
    UserModel? selectedUser,
    List<UserModel> users,
    UserModel? user,
  });

  @override
  $UserModelCopyWith<$Res>? get selectedUser;
  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ZoneAdminStateImplCopyWithImpl<$Res>
    extends _$ZoneAdminStateCopyWithImpl<$Res, _$ZoneAdminStateImpl>
    implements _$$ZoneAdminStateImplCopyWith<$Res> {
  __$$ZoneAdminStateImplCopyWithImpl(
    _$ZoneAdminStateImpl _value,
    $Res Function(_$ZoneAdminStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ZoneAdminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? district = null,
    Object? selectedUser = freezed,
    Object? users = null,
    Object? user = freezed,
  }) {
    return _then(
      _$ZoneAdminStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        district: null == district
            ? _value._district
            : district // ignore: cast_nullable_to_non_nullable
                  as List<DistrictModel>,
        selectedUser: freezed == selectedUser
            ? _value.selectedUser
            : selectedUser // ignore: cast_nullable_to_non_nullable
                  as UserModel?,
        users: null == users
            ? _value._users
            : users // ignore: cast_nullable_to_non_nullable
                  as List<UserModel>,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as UserModel?,
      ),
    );
  }
}

/// @nodoc

class _$ZoneAdminStateImpl implements _ZoneAdminState {
  const _$ZoneAdminStateImpl({
    this.status = Status.initial,
    final List<DistrictModel> district = const [],
    this.selectedUser,
    final List<UserModel> users = const [],
    this.user,
  }) : _district = district,
       _users = users;

  @override
  @JsonKey()
  final Status status;
  final List<DistrictModel> _district;
  @override
  @JsonKey()
  List<DistrictModel> get district {
    if (_district is EqualUnmodifiableListView) return _district;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_district);
  }

  @override
  final UserModel? selectedUser;
  final List<UserModel> _users;
  @override
  @JsonKey()
  List<UserModel> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final UserModel? user;

  @override
  String toString() {
    return 'ZoneAdminState(status: $status, district: $district, selectedUser: $selectedUser, users: $users, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZoneAdminStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._district, _district) &&
            (identical(other.selectedUser, selectedUser) ||
                other.selectedUser == selectedUser) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_district),
    selectedUser,
    const DeepCollectionEquality().hash(_users),
    user,
  );

  /// Create a copy of ZoneAdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ZoneAdminStateImplCopyWith<_$ZoneAdminStateImpl> get copyWith =>
      __$$ZoneAdminStateImplCopyWithImpl<_$ZoneAdminStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ZoneAdminState implements ZoneAdminState {
  const factory _ZoneAdminState({
    final Status status,
    final List<DistrictModel> district,
    final UserModel? selectedUser,
    final List<UserModel> users,
    final UserModel? user,
  }) = _$ZoneAdminStateImpl;

  @override
  Status get status;
  @override
  List<DistrictModel> get district;
  @override
  UserModel? get selectedUser;
  @override
  List<UserModel> get users;
  @override
  UserModel? get user;

  /// Create a copy of ZoneAdminState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ZoneAdminStateImplCopyWith<_$ZoneAdminStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
