// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_drop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComponentDropModel _$ComponentDropModelFromJson(Map json) {
  return $checkedNew('ComponentDropModel', json, () {
    final val = ComponentDropModel(
      location: $checkedConvert(json, 'location', (v) => v as String),
      type: $checkedConvert(json, 'type', (v) => v as String),
      rarity: $checkedConvert(json, 'rarity', (v) => v as String),
      rotation: $checkedConvert(json, 'rotation', (v) => v as String),
      chance: $checkedConvert(json, 'chance', (v) => (v as num)?.toDouble()),
    );
    return val;
  });
}

Map<String, dynamic> _$ComponentDropModelToJson(ComponentDropModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'type': instance.type,
      'rarity': instance.rarity,
      'rotation': instance.rotation,
      'chance': instance.chance,
    };
