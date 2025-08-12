import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/helper/convert_time.dart';

part 'collection_role_model.freezed.dart';
part 'collection_role_model.g.dart';

@freezed
class CollectionRoleModel with _$CollectionRoleModel {
  const factory CollectionRoleModel({
    @Default("") String id,
    @Default("") String userId,
    @Default("") String name,
    @Default("") String username,
    @Default(0.0) double normalPrice,
    @Default(0.0) double expressPrice,
    @Default("pending") String status,
    @TimestampConverter() DateTime? createdAt,
  }) = _CollectionRoleModel;

  factory CollectionRoleModel.fromJson(Map<String, dynamic> json) => _$CollectionRoleModelFromJson(json);
}
