import 'package:freezed_annotation/freezed_annotation.dart';

part 'district_model.freezed.dart';
part 'district_model.g.dart';

@freezed
class DistrictModel with _$DistrictModel {
  const factory DistrictModel({
    required int id,
    @Default("") String zone_name,
    @Default("") String district,
    @Default(0) int population,
    DateTime? created_at,
  }) = _DistrictModel;
  factory DistrictModel.fromJson(Map<String, dynamic> json) => _$DistrictModelFromJson(json);
}
