// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CollectionScheduleModel _$CollectionScheduleModelFromJson(
  Map<String, dynamic> json,
) {
  return _CollectionScheduleModel.fromJson(json);
}

/// @nodoc
mixin _$CollectionScheduleModel {
  int get id => throw _privateConstructorUsedError;
  String get collection_day => throw _privateConstructorUsedError;
  String get start_time => throw _privateConstructorUsedError;
  String get end_time => throw _privateConstructorUsedError;
  int get population => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get created_at => throw _privateConstructorUsedError;

  /// Serializes this CollectionScheduleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectionScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionScheduleModelCopyWith<CollectionScheduleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionScheduleModelCopyWith<$Res> {
  factory $CollectionScheduleModelCopyWith(
    CollectionScheduleModel value,
    $Res Function(CollectionScheduleModel) then,
  ) = _$CollectionScheduleModelCopyWithImpl<$Res, CollectionScheduleModel>;
  @useResult
  $Res call({
    int id,
    String collection_day,
    String start_time,
    String end_time,
    int population,
    @TimestampConverter() DateTime? created_at,
  });
}

/// @nodoc
class _$CollectionScheduleModelCopyWithImpl<
  $Res,
  $Val extends CollectionScheduleModel
>
    implements $CollectionScheduleModelCopyWith<$Res> {
  _$CollectionScheduleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collection_day = null,
    Object? start_time = null,
    Object? end_time = null,
    Object? population = null,
    Object? created_at = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            collection_day: null == collection_day
                ? _value.collection_day
                : collection_day // ignore: cast_nullable_to_non_nullable
                      as String,
            start_time: null == start_time
                ? _value.start_time
                : start_time // ignore: cast_nullable_to_non_nullable
                      as String,
            end_time: null == end_time
                ? _value.end_time
                : end_time // ignore: cast_nullable_to_non_nullable
                      as String,
            population: null == population
                ? _value.population
                : population // ignore: cast_nullable_to_non_nullable
                      as int,
            created_at: freezed == created_at
                ? _value.created_at
                : created_at // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CollectionScheduleModelImplCopyWith<$Res>
    implements $CollectionScheduleModelCopyWith<$Res> {
  factory _$$CollectionScheduleModelImplCopyWith(
    _$CollectionScheduleModelImpl value,
    $Res Function(_$CollectionScheduleModelImpl) then,
  ) = __$$CollectionScheduleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String collection_day,
    String start_time,
    String end_time,
    int population,
    @TimestampConverter() DateTime? created_at,
  });
}

/// @nodoc
class __$$CollectionScheduleModelImplCopyWithImpl<$Res>
    extends
        _$CollectionScheduleModelCopyWithImpl<
          $Res,
          _$CollectionScheduleModelImpl
        >
    implements _$$CollectionScheduleModelImplCopyWith<$Res> {
  __$$CollectionScheduleModelImplCopyWithImpl(
    _$CollectionScheduleModelImpl _value,
    $Res Function(_$CollectionScheduleModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CollectionScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collection_day = null,
    Object? start_time = null,
    Object? end_time = null,
    Object? population = null,
    Object? created_at = freezed,
  }) {
    return _then(
      _$CollectionScheduleModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        collection_day: null == collection_day
            ? _value.collection_day
            : collection_day // ignore: cast_nullable_to_non_nullable
                  as String,
        start_time: null == start_time
            ? _value.start_time
            : start_time // ignore: cast_nullable_to_non_nullable
                  as String,
        end_time: null == end_time
            ? _value.end_time
            : end_time // ignore: cast_nullable_to_non_nullable
                  as String,
        population: null == population
            ? _value.population
            : population // ignore: cast_nullable_to_non_nullable
                  as int,
        created_at: freezed == created_at
            ? _value.created_at
            : created_at // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionScheduleModelImpl implements _CollectionScheduleModel {
  const _$CollectionScheduleModelImpl({
    required this.id,
    this.collection_day = "",
    this.start_time = "",
    this.end_time = "",
    this.population = 0,
    @TimestampConverter() this.created_at,
  });

  factory _$CollectionScheduleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionScheduleModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String collection_day;
  @override
  @JsonKey()
  final String start_time;
  @override
  @JsonKey()
  final String end_time;
  @override
  @JsonKey()
  final int population;
  @override
  @TimestampConverter()
  final DateTime? created_at;

  @override
  String toString() {
    return 'CollectionScheduleModel(id: $id, collection_day: $collection_day, start_time: $start_time, end_time: $end_time, population: $population, created_at: $created_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionScheduleModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collection_day, collection_day) ||
                other.collection_day == collection_day) &&
            (identical(other.start_time, start_time) ||
                other.start_time == start_time) &&
            (identical(other.end_time, end_time) ||
                other.end_time == end_time) &&
            (identical(other.population, population) ||
                other.population == population) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    collection_day,
    start_time,
    end_time,
    population,
    created_at,
  );

  /// Create a copy of CollectionScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionScheduleModelImplCopyWith<_$CollectionScheduleModelImpl>
  get copyWith =>
      __$$CollectionScheduleModelImplCopyWithImpl<
        _$CollectionScheduleModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionScheduleModelImplToJson(this);
  }
}

abstract class _CollectionScheduleModel implements CollectionScheduleModel {
  const factory _CollectionScheduleModel({
    required final int id,
    final String collection_day,
    final String start_time,
    final String end_time,
    final int population,
    @TimestampConverter() final DateTime? created_at,
  }) = _$CollectionScheduleModelImpl;

  factory _CollectionScheduleModel.fromJson(Map<String, dynamic> json) =
      _$CollectionScheduleModelImpl.fromJson;

  @override
  int get id;
  @override
  String get collection_day;
  @override
  String get start_time;
  @override
  String get end_time;
  @override
  int get population;
  @override
  @TimestampConverter()
  DateTime? get created_at;

  /// Create a copy of CollectionScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionScheduleModelImplCopyWith<_$CollectionScheduleModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
