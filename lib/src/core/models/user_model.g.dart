// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num).toInt(),
      user_name: json['user_name'] as String? ?? "",
      user_tel: json['user_tel'] as String? ?? "",
      user_address: json['user_address'] as String? ?? "",
      user_email: json['user_email'] as String? ?? "",
      user_password: json['user_password'] as String? ?? "",
      role: json['role'] as String? ?? "",
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_name': instance.user_name,
      'user_tel': instance.user_tel,
      'user_address': instance.user_address,
      'user_email': instance.user_email,
      'user_password': instance.user_password,
      'role': instance.role,
      'created_at': instance.created_at?.toIso8601String(),
    };
