// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int get id => throw _privateConstructorUsedError;
  String get user_name => throw _privateConstructorUsedError;
  String get user_tel => throw _privateConstructorUsedError;
  String get user_address => throw _privateConstructorUsedError;
  String get user_email => throw _privateConstructorUsedError;
  String get user_password => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({
    int id,
    String user_name,
    String user_tel,
    String user_address,
    String user_email,
    String user_password,
    String role,
    DateTime? created_at,
  });
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_name = null,
    Object? user_tel = null,
    Object? user_address = null,
    Object? user_email = null,
    Object? user_password = null,
    Object? role = null,
    Object? created_at = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            user_name: null == user_name
                ? _value.user_name
                : user_name // ignore: cast_nullable_to_non_nullable
                      as String,
            user_tel: null == user_tel
                ? _value.user_tel
                : user_tel // ignore: cast_nullable_to_non_nullable
                      as String,
            user_address: null == user_address
                ? _value.user_address
                : user_address // ignore: cast_nullable_to_non_nullable
                      as String,
            user_email: null == user_email
                ? _value.user_email
                : user_email // ignore: cast_nullable_to_non_nullable
                      as String,
            user_password: null == user_password
                ? _value.user_password
                : user_password // ignore: cast_nullable_to_non_nullable
                      as String,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
    _$UserModelImpl value,
    $Res Function(_$UserModelImpl) then,
  ) = __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String user_name,
    String user_tel,
    String user_address,
    String user_email,
    String user_password,
    String role,
    DateTime? created_at,
  });
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
    _$UserModelImpl _value,
    $Res Function(_$UserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_name = null,
    Object? user_tel = null,
    Object? user_address = null,
    Object? user_email = null,
    Object? user_password = null,
    Object? role = null,
    Object? created_at = freezed,
  }) {
    return _then(
      _$UserModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        user_name: null == user_name
            ? _value.user_name
            : user_name // ignore: cast_nullable_to_non_nullable
                  as String,
        user_tel: null == user_tel
            ? _value.user_tel
            : user_tel // ignore: cast_nullable_to_non_nullable
                  as String,
        user_address: null == user_address
            ? _value.user_address
            : user_address // ignore: cast_nullable_to_non_nullable
                  as String,
        user_email: null == user_email
            ? _value.user_email
            : user_email // ignore: cast_nullable_to_non_nullable
                  as String,
        user_password: null == user_password
            ? _value.user_password
            : user_password // ignore: cast_nullable_to_non_nullable
                  as String,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
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
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl({
    required this.id,
    this.user_name = "",
    this.user_tel = "",
    this.user_address = "",
    this.user_email = "",
    this.user_password = "",
    this.role = "",
    this.created_at,
  });

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String user_name;
  @override
  @JsonKey()
  final String user_tel;
  @override
  @JsonKey()
  final String user_address;
  @override
  @JsonKey()
  final String user_email;
  @override
  @JsonKey()
  final String user_password;
  @override
  @JsonKey()
  final String role;
  @override
  final DateTime? created_at;

  @override
  String toString() {
    return 'UserModel(id: $id, user_name: $user_name, user_tel: $user_tel, user_address: $user_address, user_email: $user_email, user_password: $user_password, role: $role, created_at: $created_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_name, user_name) ||
                other.user_name == user_name) &&
            (identical(other.user_tel, user_tel) ||
                other.user_tel == user_tel) &&
            (identical(other.user_address, user_address) ||
                other.user_address == user_address) &&
            (identical(other.user_email, user_email) ||
                other.user_email == user_email) &&
            (identical(other.user_password, user_password) ||
                other.user_password == user_password) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    user_name,
    user_tel,
    user_address,
    user_email,
    user_password,
    role,
    created_at,
  );

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel({
    required final int id,
    final String user_name,
    final String user_tel,
    final String user_address,
    final String user_email,
    final String user_password,
    final String role,
    final DateTime? created_at,
  }) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  int get id;
  @override
  String get user_name;
  @override
  String get user_tel;
  @override
  String get user_address;
  @override
  String get user_email;
  @override
  String get user_password;
  @override
  String get role;
  @override
  DateTime? get created_at;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
