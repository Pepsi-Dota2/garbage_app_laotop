// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_role_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionRoleModelImpl _$$CollectionRoleModelImplFromJson(
  Map<String, dynamic> json,
) => _$CollectionRoleModelImpl(
  id: json['id'] as String? ?? "",
  userId: json['userId'] as String? ?? "",
  name: json['name'] as String? ?? "",
  username: json['username'] as String? ?? "",
  normalPrice: (json['normalPrice'] as num?)?.toDouble() ?? 0.0,
  expressPrice: (json['expressPrice'] as num?)?.toDouble() ?? 0.0,
  status: json['status'] as String? ?? "pending",
  createdAt: const TimestampConverter().fromJson(json['createdAt']),
);

Map<String, dynamic> _$$CollectionRoleModelImplToJson(
  _$CollectionRoleModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'name': instance.name,
  'username': instance.username,
  'normalPrice': instance.normalPrice,
  'expressPrice': instance.expressPrice,
  'status': instance.status,
  'createdAt': const TimestampConverter().toJson(instance.createdAt),
};
