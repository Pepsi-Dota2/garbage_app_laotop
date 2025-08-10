import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_schedule_model.freezed.dart';
part 'collection_schedule_model.g.dart';

@freezed
class CollectionScheduleModel with _$CollectionScheduleModel {
  const factory CollectionScheduleModel({
    required int id,
    @Default("") String collection_day,
    @Default("") String start_time,
    @Default("") String end_time,
    @Default(0) int population,
    DateTime? created_at,
  }) = _CollectionScheduleModel;
  factory CollectionScheduleModel.fromJson(Map<String, dynamic> json) => _$CollectionScheduleModelFromJson(json);
}
