// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_admin_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ReportAdminState {
  Status get status => throw _privateConstructorUsedError;

  /// Create a copy of ReportAdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportAdminStateCopyWith<ReportAdminState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportAdminStateCopyWith<$Res> {
  factory $ReportAdminStateCopyWith(
    ReportAdminState value,
    $Res Function(ReportAdminState) then,
  ) = _$ReportAdminStateCopyWithImpl<$Res, ReportAdminState>;
  @useResult
  $Res call({Status status});
}

/// @nodoc
class _$ReportAdminStateCopyWithImpl<$Res, $Val extends ReportAdminState>
    implements $ReportAdminStateCopyWith<$Res> {
  _$ReportAdminStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportAdminState
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
abstract class _$$ReportAdminStateImplCopyWith<$Res>
    implements $ReportAdminStateCopyWith<$Res> {
  factory _$$ReportAdminStateImplCopyWith(
    _$ReportAdminStateImpl value,
    $Res Function(_$ReportAdminStateImpl) then,
  ) = __$$ReportAdminStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status});
}

/// @nodoc
class __$$ReportAdminStateImplCopyWithImpl<$Res>
    extends _$ReportAdminStateCopyWithImpl<$Res, _$ReportAdminStateImpl>
    implements _$$ReportAdminStateImplCopyWith<$Res> {
  __$$ReportAdminStateImplCopyWithImpl(
    _$ReportAdminStateImpl _value,
    $Res Function(_$ReportAdminStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportAdminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _$ReportAdminStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
      ),
    );
  }
}

/// @nodoc

class _$ReportAdminStateImpl implements _ReportAdminState {
  const _$ReportAdminStateImpl({this.status = Status.initial});

  @override
  @JsonKey()
  final Status status;

  @override
  String toString() {
    return 'ReportAdminState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportAdminStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of ReportAdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportAdminStateImplCopyWith<_$ReportAdminStateImpl> get copyWith =>
      __$$ReportAdminStateImplCopyWithImpl<_$ReportAdminStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ReportAdminState implements ReportAdminState {
  const factory _ReportAdminState({final Status status}) =
      _$ReportAdminStateImpl;

  @override
  Status get status;

  /// Create a copy of ReportAdminState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportAdminStateImplCopyWith<_$ReportAdminStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
