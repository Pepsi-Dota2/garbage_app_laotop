// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CollectionPaymentModel _$CollectionPaymentModelFromJson(
  Map<String, dynamic> json,
) {
  return _CollectionPaymentModel.fromJson(json);
}

/// @nodoc
mixin _$CollectionPaymentModel {
  int get id => throw _privateConstructorUsedError;
  String get cus_name => throw _privateConstructorUsedError;
  String get doc_no => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this CollectionPaymentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectionPaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionPaymentModelCopyWith<CollectionPaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionPaymentModelCopyWith<$Res> {
  factory $CollectionPaymentModelCopyWith(
    CollectionPaymentModel value,
    $Res Function(CollectionPaymentModel) then,
  ) = _$CollectionPaymentModelCopyWithImpl<$Res, CollectionPaymentModel>;
  @useResult
  $Res call({
    int id,
    String cus_name,
    String doc_no,
    String price,
    bool status,
    DateTime? createdAt,
  });
}

/// @nodoc
class _$CollectionPaymentModelCopyWithImpl<
  $Res,
  $Val extends CollectionPaymentModel
>
    implements $CollectionPaymentModelCopyWith<$Res> {
  _$CollectionPaymentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionPaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cus_name = null,
    Object? doc_no = null,
    Object? price = null,
    Object? status = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            cus_name: null == cus_name
                ? _value.cus_name
                : cus_name // ignore: cast_nullable_to_non_nullable
                      as String,
            doc_no: null == doc_no
                ? _value.doc_no
                : doc_no // ignore: cast_nullable_to_non_nullable
                      as String,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as bool,
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
abstract class _$$CollectionPaymentModelImplCopyWith<$Res>
    implements $CollectionPaymentModelCopyWith<$Res> {
  factory _$$CollectionPaymentModelImplCopyWith(
    _$CollectionPaymentModelImpl value,
    $Res Function(_$CollectionPaymentModelImpl) then,
  ) = __$$CollectionPaymentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String cus_name,
    String doc_no,
    String price,
    bool status,
    DateTime? createdAt,
  });
}

/// @nodoc
class __$$CollectionPaymentModelImplCopyWithImpl<$Res>
    extends
        _$CollectionPaymentModelCopyWithImpl<$Res, _$CollectionPaymentModelImpl>
    implements _$$CollectionPaymentModelImplCopyWith<$Res> {
  __$$CollectionPaymentModelImplCopyWithImpl(
    _$CollectionPaymentModelImpl _value,
    $Res Function(_$CollectionPaymentModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CollectionPaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cus_name = null,
    Object? doc_no = null,
    Object? price = null,
    Object? status = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$CollectionPaymentModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        cus_name: null == cus_name
            ? _value.cus_name
            : cus_name // ignore: cast_nullable_to_non_nullable
                  as String,
        doc_no: null == doc_no
            ? _value.doc_no
            : doc_no // ignore: cast_nullable_to_non_nullable
                  as String,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as bool,
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
class _$CollectionPaymentModelImpl implements _CollectionPaymentModel {
  const _$CollectionPaymentModelImpl({
    required this.id,
    this.cus_name = "",
    this.doc_no = "",
    this.price = "",
    this.status = false,
    this.createdAt,
  });

  factory _$CollectionPaymentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionPaymentModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String cus_name;
  @override
  @JsonKey()
  final String doc_no;
  @override
  @JsonKey()
  final String price;
  @override
  @JsonKey()
  final bool status;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'CollectionPaymentModel(id: $id, cus_name: $cus_name, doc_no: $doc_no, price: $price, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionPaymentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cus_name, cus_name) ||
                other.cus_name == cus_name) &&
            (identical(other.doc_no, doc_no) || other.doc_no == doc_no) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, cus_name, doc_no, price, status, createdAt);

  /// Create a copy of CollectionPaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionPaymentModelImplCopyWith<_$CollectionPaymentModelImpl>
  get copyWith =>
      __$$CollectionPaymentModelImplCopyWithImpl<_$CollectionPaymentModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionPaymentModelImplToJson(this);
  }
}

abstract class _CollectionPaymentModel implements CollectionPaymentModel {
  const factory _CollectionPaymentModel({
    required final int id,
    final String cus_name,
    final String doc_no,
    final String price,
    final bool status,
    final DateTime? createdAt,
  }) = _$CollectionPaymentModelImpl;

  factory _CollectionPaymentModel.fromJson(Map<String, dynamic> json) =
      _$CollectionPaymentModelImpl.fromJson;

  @override
  int get id;
  @override
  String get cus_name;
  @override
  String get doc_no;
  @override
  String get price;
  @override
  bool get status;
  @override
  DateTime? get createdAt;

  /// Create a copy of CollectionPaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionPaymentModelImplCopyWith<_$CollectionPaymentModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
