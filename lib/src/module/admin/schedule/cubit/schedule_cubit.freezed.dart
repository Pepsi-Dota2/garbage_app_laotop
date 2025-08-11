// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ScheduleState {
  Status get status => throw _privateConstructorUsedError;
  List<CollectionScheduleModel> get schedules =>
      throw _privateConstructorUsedError;

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleStateCopyWith<ScheduleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateCopyWith<$Res> {
  factory $ScheduleStateCopyWith(
    ScheduleState value,
    $Res Function(ScheduleState) then,
  ) = _$ScheduleStateCopyWithImpl<$Res, ScheduleState>;
  @useResult
  $Res call({Status status, List<CollectionScheduleModel> schedules});
}

/// @nodoc
class _$ScheduleStateCopyWithImpl<$Res, $Val extends ScheduleState>
    implements $ScheduleStateCopyWith<$Res> {
  _$ScheduleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? schedules = null}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            schedules: null == schedules
                ? _value.schedules
                : schedules // ignore: cast_nullable_to_non_nullable
                      as List<CollectionScheduleModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScheduleStateImplCopyWith<$Res>
    implements $ScheduleStateCopyWith<$Res> {
  factory _$$ScheduleStateImplCopyWith(
    _$ScheduleStateImpl value,
    $Res Function(_$ScheduleStateImpl) then,
  ) = __$$ScheduleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<CollectionScheduleModel> schedules});
}

/// @nodoc
class __$$ScheduleStateImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$ScheduleStateImpl>
    implements _$$ScheduleStateImplCopyWith<$Res> {
  __$$ScheduleStateImplCopyWithImpl(
    _$ScheduleStateImpl _value,
    $Res Function(_$ScheduleStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? schedules = null}) {
    return _then(
      _$ScheduleStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        schedules: null == schedules
            ? _value._schedules
            : schedules // ignore: cast_nullable_to_non_nullable
                  as List<CollectionScheduleModel>,
      ),
    );
  }
}

/// @nodoc

class _$ScheduleStateImpl implements _ScheduleState {
  const _$ScheduleStateImpl({
    this.status = Status.initial,
    final List<CollectionScheduleModel> schedules = const [],
  }) : _schedules = schedules;

  @override
  @JsonKey()
  final Status status;
  final List<CollectionScheduleModel> _schedules;
  @override
  @JsonKey()
  List<CollectionScheduleModel> get schedules {
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedules);
  }

  @override
  String toString() {
    return 'ScheduleState(status: $status, schedules: $schedules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._schedules,
              _schedules,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_schedules),
  );

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleStateImplCopyWith<_$ScheduleStateImpl> get copyWith =>
      __$$ScheduleStateImplCopyWithImpl<_$ScheduleStateImpl>(this, _$identity);
}

abstract class _ScheduleState implements ScheduleState {
  const factory _ScheduleState({
    final Status status,
    final List<CollectionScheduleModel> schedules,
  }) = _$ScheduleStateImpl;

  @override
  Status get status;
  @override
  List<CollectionScheduleModel> get schedules;

  /// Create a copy of ScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleStateImplCopyWith<_$ScheduleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
