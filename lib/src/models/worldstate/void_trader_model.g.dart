// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'void_trader_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoidTraderModel _$VoidTraderModelFromJson(Map json) {
  return VoidTraderModel(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    character: json['character'] as String,
    location: json['location'] as String,
    active: json['active'] as bool,
    inventory: (json['inventory'] as List)
        ?.map((e) => e == null
            ? null
            : InventoryItemModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
  );
}

Map<String, dynamic> _$VoidTraderModelToJson(VoidTraderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'character': instance.character,
      'location': instance.location,
      'active': instance.active,
      'inventory': instance.inventory?.map((e) => e?.toJson())?.toList(),
    };

InventoryItemModel _$InventoryItemModelFromJson(Map json) {
  return InventoryItemModel(
    item: json['item'] as String,
    ducats: json['ducats'] as int,
    credits: json['credits'] as int,
  );
}

Map<String, dynamic> _$InventoryItemModelToJson(InventoryItemModel instance) =>
    <String, dynamic>{
      'item': instance.item,
      'ducats': instance.ducats,
      'credits': instance.credits,
    };
