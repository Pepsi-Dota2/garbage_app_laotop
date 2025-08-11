// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      uid: json['uid'] as String? ?? "",
      username: json['username'] as String? ?? "",
      user_tel: json['user_tel'] as String? ?? "",
      address: json['address'] as String? ?? "",
      email: json['email'] as String? ?? "",
      user_password: json['user_password'] as String? ?? "",
      role: json['role'] as String? ?? "",
      createdAt: json['createdAt'] ?? "",
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'username': instance.username,
      'user_tel': instance.user_tel,
      'address': instance.address,
      'email': instance.email,
      'user_password': instance.user_password,
      'role': instance.role,
      'createdAt': instance.createdAt,
    };
