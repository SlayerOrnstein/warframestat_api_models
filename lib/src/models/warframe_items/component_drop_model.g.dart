// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_drop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComponentDropModel _$ComponentDropModelFromJson(Map json) {
  return ComponentDropModel(
    location: json['location'] as String,
    type: json['type'] as String,
    rarity: json['rarity'] as String,
    rotation: json['rotation'] as String,
    chance: (json['chance'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$ComponentDropModelToJson(ComponentDropModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'type': instance.type,
      'rarity': instance.rarity,
      'rotation': instance.rotation,
      'chance': instance.chance,
    };
