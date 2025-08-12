// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'express_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ExpressState {
  Status get status => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  MapType? get mapType => throw _privateConstructorUsedError;
  Set<Marker> get markers => throw _privateConstructorUsedError;

  /// Create a copy of ExpressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExpressStateCopyWith<ExpressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpressStateCopyWith<$Res> {
  factory $ExpressStateCopyWith(
    ExpressState value,
    $Res Function(ExpressState) then,
  ) = _$ExpressStateCopyWithImpl<$Res, ExpressState>;
  @useResult
  $Res call({
    Status status,
    double? latitude,
    double? longitude,
    MapType? mapType,
    Set<Marker> markers,
  });
}

/// @nodoc
class _$ExpressStateCopyWithImpl<$Res, $Val extends ExpressState>
    implements $ExpressStateCopyWith<$Res> {
  _$ExpressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? mapType = freezed,
    Object? markers = null,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            latitude: freezed == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                      as double?,
            longitude: freezed == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                      as double?,
            mapType: freezed == mapType
                ? _value.mapType
                : mapType // ignore: cast_nullable_to_non_nullable
                      as MapType?,
            markers: null == markers
                ? _value.markers
                : markers // ignore: cast_nullable_to_non_nullable
                      as Set<Marker>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExpressStateImplCopyWith<$Res>
    implements $ExpressStateCopyWith<$Res> {
  factory _$$ExpressStateImplCopyWith(
    _$ExpressStateImpl value,
    $Res Function(_$ExpressStateImpl) then,
  ) = __$$ExpressStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    double? latitude,
    double? longitude,
    MapType? mapType,
    Set<Marker> markers,
  });
}

/// @nodoc
class __$$ExpressStateImplCopyWithImpl<$Res>
    extends _$ExpressStateCopyWithImpl<$Res, _$ExpressStateImpl>
    implements _$$ExpressStateImplCopyWith<$Res> {
  __$$ExpressStateImplCopyWithImpl(
    _$ExpressStateImpl _value,
    $Res Function(_$ExpressStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExpressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? mapType = freezed,
    Object? markers = null,
  }) {
    return _then(
      _$ExpressStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        latitude: freezed == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double?,
        longitude: freezed == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double?,
        mapType: freezed == mapType
            ? _value.mapType
            : mapType // ignore: cast_nullable_to_non_nullable
                  as MapType?,
        markers: null == markers
            ? _value._markers
            : markers // ignore: cast_nullable_to_non_nullable
                  as Set<Marker>,
      ),
    );
  }
}

/// @nodoc

class _$ExpressStateImpl implements _ExpressState {
  const _$ExpressStateImpl({
    this.status = Status.initial,
    this.latitude,
    this.longitude,
    this.mapType,
    final Set<Marker> markers = const <Marker>{},
  }) : _markers = markers;

  @override
  @JsonKey()
  final Status status;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final MapType? mapType;
  final Set<Marker> _markers;
  @override
  @JsonKey()
  Set<Marker> get markers {
    if (_markers is EqualUnmodifiableSetView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_markers);
  }

  @override
  String toString() {
    return 'ExpressState(status: $status, latitude: $latitude, longitude: $longitude, mapType: $mapType, markers: $markers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpressStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.mapType, mapType) || other.mapType == mapType) &&
            const DeepCollectionEquality().equals(other._markers, _markers));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    latitude,
    longitude,
    mapType,
    const DeepCollectionEquality().hash(_markers),
  );

  /// Create a copy of ExpressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpressStateImplCopyWith<_$ExpressStateImpl> get copyWith =>
      __$$ExpressStateImplCopyWithImpl<_$ExpressStateImpl>(this, _$identity);
}

abstract class _ExpressState implements ExpressState {
  const factory _ExpressState({
    final Status status,
    final double? latitude,
    final double? longitude,
    final MapType? mapType,
    final Set<Marker> markers,
  }) = _$ExpressStateImpl;

  @override
  Status get status;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  MapType? get mapType;
  @override
  Set<Marker> get markers;

  /// Create a copy of ExpressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpressStateImplCopyWith<_$ExpressStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
