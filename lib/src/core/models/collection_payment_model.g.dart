// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionPaymentModelImpl _$$CollectionPaymentModelImplFromJson(
  Map<String, dynamic> json,
) => _$CollectionPaymentModelImpl(
  id: (json['id'] as num).toInt(),
  cus_name: json['cus_name'] as String? ?? "",
  doc_no: json['doc_no'] as String? ?? "",
  price: json['price'] as String? ?? "",
  status: json['status'] as bool? ?? false,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$CollectionPaymentModelImplToJson(
  _$CollectionPaymentModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'cus_name': instance.cus_name,
  'doc_no': instance.doc_no,
  'price': instance.price,
  'status': instance.status,
  'createdAt': instance.createdAt?.toIso8601String(),
};
