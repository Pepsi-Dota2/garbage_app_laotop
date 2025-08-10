import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_payment_model.freezed.dart';
part 'collection_payment_model.g.dart';

@freezed
class CollectionPaymentModel with _$CollectionPaymentModel {
  const factory CollectionPaymentModel({
    required int id,
    @Default("") String cus_name,
    @Default("") String doc_no,
    @Default("") String price,
    @Default(false) bool status,
    DateTime? createdAt,
  }) = _CollectionPaymentModel;

  factory CollectionPaymentModel.fromJson(Map<String, dynamic> json) => _$CollectionPaymentModelFromJson(json);
}
