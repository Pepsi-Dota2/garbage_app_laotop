// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionScheduleModelImpl _$$CollectionScheduleModelImplFromJson(
  Map<String, dynamic> json,
) => _$CollectionScheduleModelImpl(
  id: (json['id'] as num).toInt(),
  collection_day: json['collection_day'] as String? ?? "",
  start_time: json['start_time'] as String? ?? "",
  end_time: json['end_time'] as String? ?? "",
  population: (json['population'] as num?)?.toInt() ?? 0,
  created_at: const TimestampConverter().fromJson(json['created_at']),
);

Map<String, dynamic> _$$CollectionScheduleModelImplToJson(
  _$CollectionScheduleModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'collection_day': instance.collection_day,
  'start_time': instance.start_time,
  'end_time': instance.end_time,
  'population': instance.population,
  'created_at': const TimestampConverter().toJson(instance.created_at),
};
