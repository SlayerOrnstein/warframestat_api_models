// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trader.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoidTrader _$VoidTraderFromJson(Map json) {
  return VoidTrader(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    character: json['character'] as String ?? '',
    location: json['location'] as String ?? '',
    active: json['active'] as bool ?? false,
    inventory: (json['inventory'] as List)
            ?.map((e) => e == null
                ? null
                : InventoryItem.fromJson((e as Map)?.map(
                    (k, e) => MapEntry(k as String, e),
                  )))
            ?.toList() ??
        [],
  );
}

Map<String, dynamic> _$VoidTraderToJson(VoidTrader instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'character': instance.character,
      'location': instance.location,
      'active': instance.active,
      'inventory': instance.inventory?.map((e) => e?.toJson())?.toList(),
    };

InventoryItem _$InventoryItemFromJson(Map json) {
  return InventoryItem(
    itemName: json['item'] as String,
    ducats: json['ducats'] as int,
    credits: json['credits'] as int,
  );
}

Map<String, dynamic> _$InventoryItemToJson(InventoryItem instance) =>
    <String, dynamic>{
      'item': instance.itemName,
      'ducats': instance.ducats,
      'credits': instance.credits,
    };
