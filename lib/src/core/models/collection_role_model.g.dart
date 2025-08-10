// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_role_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionRoleModelImpl _$$CollectionRoleModelImplFromJson(
  Map<String, dynamic> json,
) => _$CollectionRoleModelImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String? ?? "",
  normalPrice: (json['normalPrice'] as num?)?.toDouble() ?? 0.0,
  expressPrice: (json['expressPrice'] as num?)?.toDouble() ?? 0.0,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$CollectionRoleModelImplToJson(
  _$CollectionRoleModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'normalPrice': instance.normalPrice,
  'expressPrice': instance.expressPrice,
  'createdAt': instance.createdAt?.toIso8601String(),
};
