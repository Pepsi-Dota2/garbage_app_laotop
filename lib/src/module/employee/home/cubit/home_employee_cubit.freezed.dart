// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_employee_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeEmployeeState {
  Status get status => throw _privateConstructorUsedError;
  List<CollectionRoleModel> get collection =>
      throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  MapType? get mapType => throw _privateConstructorUsedError;
  Set<Marker> get markers => throw _privateConstructorUsedError;
  String get selectedCustomerName => throw _privateConstructorUsedError;

  /// Create a copy of HomeEmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeEmployeeStateCopyWith<HomeEmployeeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEmployeeStateCopyWith<$Res> {
  factory $HomeEmployeeStateCopyWith(
    HomeEmployeeState value,
    $Res Function(HomeEmployeeState) then,
  ) = _$HomeEmployeeStateCopyWithImpl<$Res, HomeEmployeeState>;
  @useResult
  $Res call({
    Status status,
    List<CollectionRoleModel> collection,
    double? latitude,
    double? longitude,
    MapType? mapType,
    Set<Marker> markers,
    String selectedCustomerName,
  });
}

/// @nodoc
class _$HomeEmployeeStateCopyWithImpl<$Res, $Val extends HomeEmployeeState>
    implements $HomeEmployeeStateCopyWith<$Res> {
  _$HomeEmployeeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? collection = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? mapType = freezed,
    Object? markers = null,
    Object? selectedCustomerName = null,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            collection: null == collection
                ? _value.collection
                : collection // ignore: cast_nullable_to_non_nullable
                      as List<CollectionRoleModel>,
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
            selectedCustomerName: null == selectedCustomerName
                ? _value.selectedCustomerName
                : selectedCustomerName // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HomeEmployeeStateImplCopyWith<$Res>
    implements $HomeEmployeeStateCopyWith<$Res> {
  factory _$$HomeEmployeeStateImplCopyWith(
    _$HomeEmployeeStateImpl value,
    $Res Function(_$HomeEmployeeStateImpl) then,
  ) = __$$HomeEmployeeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    List<CollectionRoleModel> collection,
    double? latitude,
    double? longitude,
    MapType? mapType,
    Set<Marker> markers,
    String selectedCustomerName,
  });
}

/// @nodoc
class __$$HomeEmployeeStateImplCopyWithImpl<$Res>
    extends _$HomeEmployeeStateCopyWithImpl<$Res, _$HomeEmployeeStateImpl>
    implements _$$HomeEmployeeStateImplCopyWith<$Res> {
  __$$HomeEmployeeStateImplCopyWithImpl(
    _$HomeEmployeeStateImpl _value,
    $Res Function(_$HomeEmployeeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? collection = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? mapType = freezed,
    Object? markers = null,
    Object? selectedCustomerName = null,
  }) {
    return _then(
      _$HomeEmployeeStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        collection: null == collection
            ? _value._collection
            : collection // ignore: cast_nullable_to_non_nullable
                  as List<CollectionRoleModel>,
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
        selectedCustomerName: null == selectedCustomerName
            ? _value.selectedCustomerName
            : selectedCustomerName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$HomeEmployeeStateImpl implements _HomeEmployeeState {
  const _$HomeEmployeeStateImpl({
    this.status = Status.initial,
    final List<CollectionRoleModel> collection = const [],
    this.latitude,
    this.longitude,
    this.mapType,
    final Set<Marker> markers = const <Marker>{},
    this.selectedCustomerName = "",
  }) : _collection = collection,
       _markers = markers;

  @override
  @JsonKey()
  final Status status;
  final List<CollectionRoleModel> _collection;
  @override
  @JsonKey()
  List<CollectionRoleModel> get collection {
    if (_collection is EqualUnmodifiableListView) return _collection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collection);
  }

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
  @JsonKey()
  final String selectedCustomerName;

  @override
  String toString() {
    return 'HomeEmployeeState(status: $status, collection: $collection, latitude: $latitude, longitude: $longitude, mapType: $mapType, markers: $markers, selectedCustomerName: $selectedCustomerName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEmployeeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._collection,
              _collection,
            ) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.mapType, mapType) || other.mapType == mapType) &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            (identical(other.selectedCustomerName, selectedCustomerName) ||
                other.selectedCustomerName == selectedCustomerName));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_collection),
    latitude,
    longitude,
    mapType,
    const DeepCollectionEquality().hash(_markers),
    selectedCustomerName,
  );

  /// Create a copy of HomeEmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEmployeeStateImplCopyWith<_$HomeEmployeeStateImpl> get copyWith =>
      __$$HomeEmployeeStateImplCopyWithImpl<_$HomeEmployeeStateImpl>(
        this,
        _$identity,
      );
}

abstract class _HomeEmployeeState implements HomeEmployeeState {
  const factory _HomeEmployeeState({
    final Status status,
    final List<CollectionRoleModel> collection,
    final double? latitude,
    final double? longitude,
    final MapType? mapType,
    final Set<Marker> markers,
    final String selectedCustomerName,
  }) = _$HomeEmployeeStateImpl;

  @override
  Status get status;
  @override
  List<CollectionRoleModel> get collection;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  MapType? get mapType;
  @override
  Set<Marker> get markers;
  @override
  String get selectedCustomerName;

  /// Create a copy of HomeEmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeEmployeeStateImplCopyWith<_$HomeEmployeeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
