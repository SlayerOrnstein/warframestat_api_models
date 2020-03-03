// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slim_drop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SlimDrop _$SlimDropFromJson(Map json) {
  return SlimDrop(
    place: json['place'] as String,
    item: json['item'] as String,
    rarity: json['rarity'] as String,
    dropChance: json['chance'],
  );
}

Map<String, dynamic> _$SlimDropToJson(SlimDrop instance) => <String, dynamic>{
      'place': instance.place,
      'item': instance.item,
      'rarity': instance.rarity,
      'chance': instance.dropChance,
    };
