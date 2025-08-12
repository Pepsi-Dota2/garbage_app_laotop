// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_admin_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProfileAdminState {
  Status get status => throw _privateConstructorUsedError;

  /// Create a copy of ProfileAdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileAdminStateCopyWith<ProfileAdminState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileAdminStateCopyWith<$Res> {
  factory $ProfileAdminStateCopyWith(
    ProfileAdminState value,
    $Res Function(ProfileAdminState) then,
  ) = _$ProfileAdminStateCopyWithImpl<$Res, ProfileAdminState>;
  @useResult
  $Res call({Status status});
}

/// @nodoc
class _$ProfileAdminStateCopyWithImpl<$Res, $Val extends ProfileAdminState>
    implements $ProfileAdminStateCopyWith<$Res> {
  _$ProfileAdminStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileAdminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProfileAdminStateImplCopyWith<$Res>
    implements $ProfileAdminStateCopyWith<$Res> {
  factory _$$ProfileAdminStateImplCopyWith(
    _$ProfileAdminStateImpl value,
    $Res Function(_$ProfileAdminStateImpl) then,
  ) = __$$ProfileAdminStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status});
}

/// @nodoc
class __$$ProfileAdminStateImplCopyWithImpl<$Res>
    extends _$ProfileAdminStateCopyWithImpl<$Res, _$ProfileAdminStateImpl>
    implements _$$ProfileAdminStateImplCopyWith<$Res> {
  __$$ProfileAdminStateImplCopyWithImpl(
    _$ProfileAdminStateImpl _value,
    $Res Function(_$ProfileAdminStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileAdminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _$ProfileAdminStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
      ),
    );
  }
}

/// @nodoc

class _$ProfileAdminStateImpl implements _ProfileAdminState {
  const _$ProfileAdminStateImpl({this.status = Status.initial});

  @override
  @JsonKey()
  final Status status;

  @override
  String toString() {
    return 'ProfileAdminState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileAdminStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of ProfileAdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileAdminStateImplCopyWith<_$ProfileAdminStateImpl> get copyWith =>
      __$$ProfileAdminStateImplCopyWithImpl<_$ProfileAdminStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ProfileAdminState implements ProfileAdminState {
  const factory _ProfileAdminState({final Status status}) =
      _$ProfileAdminStateImpl;

  @override
  Status get status;

  /// Create a copy of ProfileAdminState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileAdminStateImplCopyWith<_$ProfileAdminStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
