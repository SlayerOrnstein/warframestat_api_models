// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DarvoDeal _$DarvoDealFromJson(Map json) {
  return DarvoDeal(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    item: json['item'] as String,
    originalPrice: json['originalPrice'] as num,
    salePrice: json['salePrice'] as num,
    total: json['total'] as num,
    sold: json['sold'] as num,
    discount: json['discount'] as num,
  );
}

Map<String, dynamic> _$DarvoDealToJson(DarvoDeal instance) => <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'item': instance.item,
      'originalPrice': instance.originalPrice,
      'salePrice': instance.salePrice,
      'total': instance.total,
      'sold': instance.sold,
      'discount': instance.discount,
    };
