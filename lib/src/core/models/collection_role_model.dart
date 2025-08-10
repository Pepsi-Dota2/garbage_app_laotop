import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_role_model.freezed.dart';
part 'collection_role_model.g.dart';

@freezed
class CollectionRoleModel with _$CollectionRoleModel {
  const factory CollectionRoleModel({
    required int id,
    @Default("") String name,
    @Default(0.0) double normalPrice,
    @Default(0.0) double expressPrice,
    DateTime? createdAt,
  }) = _CollectionRoleModel;

  factory CollectionRoleModel.fromJson(Map<String, dynamic> json) => _$CollectionRoleModelFromJson(json);
}
