// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComponentModel _$ComponentModelFromJson(Map json) {
  return $checkedNew('ComponentModel', json, () {
    final val = ComponentModel(
      uniqueName: $checkedConvert(json, 'uniqueName', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      itemCount: $checkedConvert(json, 'itemCount', (v) => v as num),
      imageName: $checkedConvert(json, 'imageName', (v) => v as String),
      tradable: $checkedConvert(json, 'tradable', (v) => v as bool),
      drops: $checkedConvert(
          json,
          'drops',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : DropModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$ComponentModelToJson(ComponentModel instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'imageName': instance.imageName,
      'tradable': instance.tradable,
      'itemCount': instance.itemCount,
      'drops': instance.drops?.map((e) => e?.toJson())?.toList(),
    };

DropModel _$DropModelFromJson(Map json) {
  return $checkedNew('DropModel', json, () {
    final val = DropModel(
      location: $checkedConvert(json, 'location', (v) => v as String),
      type: $checkedConvert(json, 'type', (v) => v as String),
      rarity: $checkedConvert(json, 'rarity', (v) => v as String),
      rotation: $checkedConvert(json, 'rotation', (v) => v as String),
      chance: $checkedConvert(json, 'chance', (v) => (v as num)?.toDouble()),
    );
    return val;
  });
}

Map<String, dynamic> _$DropModelToJson(DropModel instance) => <String, dynamic>{
      'location': instance.location,
      'type': instance.type,
      'rarity': instance.rarity,
      'rotation': instance.rotation,
      'chance': instance.chance,
    };
