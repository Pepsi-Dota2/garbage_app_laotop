// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DistrictModelImpl _$$DistrictModelImplFromJson(Map<String, dynamic> json) =>
    _$DistrictModelImpl(
      id: (json['id'] as num).toInt(),
      zone_name: json['zone_name'] as String? ?? "",
      district: json['district'] as String? ?? "",
      population: (json['population'] as num?)?.toInt() ?? 0,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$DistrictModelImplToJson(_$DistrictModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'zone_name': instance.zone_name,
      'district': instance.district,
      'population': instance.population,
      'created_at': instance.created_at?.toIso8601String(),
    };
