// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_role_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CollectionRoleModel _$CollectionRoleModelFromJson(Map<String, dynamic> json) {
  return _CollectionRoleModel.fromJson(json);
}

/// @nodoc
mixin _$CollectionRoleModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get normalPrice => throw _privateConstructorUsedError;
  double get expressPrice => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this CollectionRoleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectionRoleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionRoleModelCopyWith<CollectionRoleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionRoleModelCopyWith<$Res> {
  factory $CollectionRoleModelCopyWith(
    CollectionRoleModel value,
    $Res Function(CollectionRoleModel) then,
  ) = _$CollectionRoleModelCopyWithImpl<$Res, CollectionRoleModel>;
  @useResult
  $Res call({
    int id,
    String name,
    double normalPrice,
    double expressPrice,
    DateTime? createdAt,
  });
}

/// @nodoc
class _$CollectionRoleModelCopyWithImpl<$Res, $Val extends CollectionRoleModel>
    implements $CollectionRoleModelCopyWith<$Res> {
  _$CollectionRoleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionRoleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? normalPrice = null,
    Object? expressPrice = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            normalPrice: null == normalPrice
                ? _value.normalPrice
                : normalPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            expressPrice: null == expressPrice
                ? _value.expressPrice
                : expressPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CollectionRoleModelImplCopyWith<$Res>
    implements $CollectionRoleModelCopyWith<$Res> {
  factory _$$CollectionRoleModelImplCopyWith(
    _$CollectionRoleModelImpl value,
    $Res Function(_$CollectionRoleModelImpl) then,
  ) = __$$CollectionRoleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    double normalPrice,
    double expressPrice,
    DateTime? createdAt,
  });
}

/// @nodoc
class __$$CollectionRoleModelImplCopyWithImpl<$Res>
    extends _$CollectionRoleModelCopyWithImpl<$Res, _$CollectionRoleModelImpl>
    implements _$$CollectionRoleModelImplCopyWith<$Res> {
  __$$CollectionRoleModelImplCopyWithImpl(
    _$CollectionRoleModelImpl _value,
    $Res Function(_$CollectionRoleModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CollectionRoleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? normalPrice = null,
    Object? expressPrice = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$CollectionRoleModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        normalPrice: null == normalPrice
            ? _value.normalPrice
            : normalPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        expressPrice: null == expressPrice
            ? _value.expressPrice
            : expressPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionRoleModelImpl implements _CollectionRoleModel {
  const _$CollectionRoleModelImpl({
    required this.id,
    this.name = "",
    this.normalPrice = 0.0,
    this.expressPrice = 0.0,
    this.createdAt,
  });

  factory _$CollectionRoleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionRoleModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final double normalPrice;
  @override
  @JsonKey()
  final double expressPrice;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'CollectionRoleModel(id: $id, name: $name, normalPrice: $normalPrice, expressPrice: $expressPrice, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionRoleModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.normalPrice, normalPrice) ||
                other.normalPrice == normalPrice) &&
            (identical(other.expressPrice, expressPrice) ||
                other.expressPrice == expressPrice) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, normalPrice, expressPrice, createdAt);

  /// Create a copy of CollectionRoleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionRoleModelImplCopyWith<_$CollectionRoleModelImpl> get copyWith =>
      __$$CollectionRoleModelImplCopyWithImpl<_$CollectionRoleModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionRoleModelImplToJson(this);
  }
}

abstract class _CollectionRoleModel implements CollectionRoleModel {
  const factory _CollectionRoleModel({
    required final int id,
    final String name,
    final double normalPrice,
    final double expressPrice,
    final DateTime? createdAt,
  }) = _$CollectionRoleModelImpl;

  factory _CollectionRoleModel.fromJson(Map<String, dynamic> json) =
      _$CollectionRoleModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  double get normalPrice;
  @override
  double get expressPrice;
  @override
  DateTime? get createdAt;

  /// Create a copy of CollectionRoleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionRoleModelImplCopyWith<_$CollectionRoleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
