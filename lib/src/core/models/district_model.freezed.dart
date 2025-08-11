// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'district_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DistrictModel _$DistrictModelFromJson(Map<String, dynamic> json) {
  return _DistrictModel.fromJson(json);
}

/// @nodoc
mixin _$DistrictModel {
  int get id => throw _privateConstructorUsedError;
  String get zone_name => throw _privateConstructorUsedError;
  String get district => throw _privateConstructorUsedError;
  int get population => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;

  /// Serializes this DistrictModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DistrictModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DistrictModelCopyWith<DistrictModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictModelCopyWith<$Res> {
  factory $DistrictModelCopyWith(
    DistrictModel value,
    $Res Function(DistrictModel) then,
  ) = _$DistrictModelCopyWithImpl<$Res, DistrictModel>;
  @useResult
  $Res call({
    int id,
    String zone_name,
    String district,
    int population,
    DateTime? created_at,
    String? uid,
  });
}

/// @nodoc
class _$DistrictModelCopyWithImpl<$Res, $Val extends DistrictModel>
    implements $DistrictModelCopyWith<$Res> {
  _$DistrictModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DistrictModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? zone_name = null,
    Object? district = null,
    Object? population = null,
    Object? created_at = freezed,
    Object? uid = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            zone_name: null == zone_name
                ? _value.zone_name
                : zone_name // ignore: cast_nullable_to_non_nullable
                      as String,
            district: null == district
                ? _value.district
                : district // ignore: cast_nullable_to_non_nullable
                      as String,
            population: null == population
                ? _value.population
                : population // ignore: cast_nullable_to_non_nullable
                      as int,
            created_at: freezed == created_at
                ? _value.created_at
                : created_at // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            uid: freezed == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DistrictModelImplCopyWith<$Res>
    implements $DistrictModelCopyWith<$Res> {
  factory _$$DistrictModelImplCopyWith(
    _$DistrictModelImpl value,
    $Res Function(_$DistrictModelImpl) then,
  ) = __$$DistrictModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String zone_name,
    String district,
    int population,
    DateTime? created_at,
    String? uid,
  });
}

/// @nodoc
class __$$DistrictModelImplCopyWithImpl<$Res>
    extends _$DistrictModelCopyWithImpl<$Res, _$DistrictModelImpl>
    implements _$$DistrictModelImplCopyWith<$Res> {
  __$$DistrictModelImplCopyWithImpl(
    _$DistrictModelImpl _value,
    $Res Function(_$DistrictModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DistrictModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? zone_name = null,
    Object? district = null,
    Object? population = null,
    Object? created_at = freezed,
    Object? uid = freezed,
  }) {
    return _then(
      _$DistrictModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        zone_name: null == zone_name
            ? _value.zone_name
            : zone_name // ignore: cast_nullable_to_non_nullable
                  as String,
        district: null == district
            ? _value.district
            : district // ignore: cast_nullable_to_non_nullable
                  as String,
        population: null == population
            ? _value.population
            : population // ignore: cast_nullable_to_non_nullable
                  as int,
        created_at: freezed == created_at
            ? _value.created_at
            : created_at // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        uid: freezed == uid
            ? _value.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DistrictModelImpl implements _DistrictModel {
  const _$DistrictModelImpl({
    required this.id,
    this.zone_name = "",
    this.district = "",
    this.population = 0,
    this.created_at,
    this.uid,
  });

  factory _$DistrictModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistrictModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String zone_name;
  @override
  @JsonKey()
  final String district;
  @override
  @JsonKey()
  final int population;
  @override
  final DateTime? created_at;
  @override
  final String? uid;

  @override
  String toString() {
    return 'DistrictModel(id: $id, zone_name: $zone_name, district: $district, population: $population, created_at: $created_at, uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistrictModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.zone_name, zone_name) ||
                other.zone_name == zone_name) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.population, population) ||
                other.population == population) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    zone_name,
    district,
    population,
    created_at,
    uid,
  );

  /// Create a copy of DistrictModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DistrictModelImplCopyWith<_$DistrictModelImpl> get copyWith =>
      __$$DistrictModelImplCopyWithImpl<_$DistrictModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistrictModelImplToJson(this);
  }
}

abstract class _DistrictModel implements DistrictModel {
  const factory _DistrictModel({
    required final int id,
    final String zone_name,
    final String district,
    final int population,
    final DateTime? created_at,
    final String? uid,
  }) = _$DistrictModelImpl;

  factory _DistrictModel.fromJson(Map<String, dynamic> json) =
      _$DistrictModelImpl.fromJson;

  @override
  int get id;
  @override
  String get zone_name;
  @override
  String get district;
  @override
  int get population;
  @override
  DateTime? get created_at;
  @override
  String? get uid;

  /// Create a copy of DistrictModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DistrictModelImplCopyWith<_$DistrictModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
