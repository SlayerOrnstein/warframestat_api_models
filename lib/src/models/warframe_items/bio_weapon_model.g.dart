// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bio_weapon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BioWeaponModel _$BioWeaponModelFromJson(Map json) {
  return $checkedNew('BioWeaponModel', json, () {
    final val = BioWeaponModel(
      uniqueName: $checkedConvert(json, 'uniqueName', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      aura: $checkedConvert(json, 'aura', (v) => v as String),
      health: $checkedConvert(json, 'health', (v) => v as int),
      shield: $checkedConvert(json, 'shield', (v) => v as int),
      armor: $checkedConvert(json, 'armor', (v) => v as int),
      power: $checkedConvert(json, 'power', (v) => v as int),
      masteryReq: $checkedConvert(json, 'masteryReq', (v) => v as int),
      sprintSpeed:
          $checkedConvert(json, 'sprintSpeed', (v) => (v as num)?.toDouble()),
      passiveDescription:
          $checkedConvert(json, 'passiveDescription', (v) => v as String),
      abilities: $checkedConvert(
          json,
          'abilities',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : AbilityModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
      buildPrice: $checkedConvert(json, 'buildPrice', (v) => v as int),
      buildTime: $checkedConvert(json, 'buildTime', (v) => v as int),
      skipBuildTimePrice:
          $checkedConvert(json, 'skipBuildTimePrice', (v) => v as int),
      buildQuantity: $checkedConvert(json, 'buildQuantity', (v) => v as int),
      consumeOnBuild: $checkedConvert(json, 'consumeOnBuild', (v) => v as bool),
      components: $checkedConvert(
          json,
          'components',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : ComponentModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
      type: $checkedConvert(json, 'type', (v) => v as String),
      imageName: $checkedConvert(json, 'imageName', (v) => v as String),
      category: $checkedConvert(json, 'category', (v) => v as String),
      productCategory:
          $checkedConvert(json, 'productCategory', (v) => v as String),
      isTradable: $checkedConvert(json, 'isTradable', (v) => v as bool),
      patchlogs: $checkedConvert(
          json,
          'patchlogs',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : PatchlogModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
      wikiaThumbnail:
          $checkedConvert(json, 'wikiaThumbnail', (v) => v as String),
      wikiaUrl: $checkedConvert(json, 'wikiaUrl', (v) => v as String),
      sex: $checkedConvert(json, 'sex', (v) => v as String),
      introduced: $checkedConvert(json, 'introduced', (v) => v as String),
      polarities: $checkedConvert(json, 'polarities',
          (v) => (v as List)?.map((e) => e as String)?.toList()),
      color: $checkedConvert(json, 'color', (v) => v as int),
    );
    return val;
  });
}

Map<String, dynamic> _$BioWeaponModelToJson(BioWeaponModel instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'imageName': instance.imageName,
      'category': instance.category,
      'productCategory': instance.productCategory,
      'isTradable': instance.isTradable,
      'wikiaUrl': instance.wikiaUrl,
      'wikiaThumbnail': instance.wikiaThumbnail,
      'aura': instance.aura,
      'health': instance.health,
      'shield': instance.shield,
      'armor': instance.armor,
      'power': instance.power,
      'masteryReq': instance.masteryReq,
      'sprintSpeed': instance.sprintSpeed,
      'buildPrice': instance.buildPrice,
      'buildTime': instance.buildTime,
      'skipBuildTimePrice': instance.skipBuildTimePrice,
      'buildQuantity': instance.buildQuantity,
      'consumeOnBuild': instance.consumeOnBuild,
      'polarities': instance.polarities,
      'passiveDescription': instance.passiveDescription,
      'introduced': instance.introduced,
      'sex': instance.sex,
      'color': instance.color,
      'components': instance.components?.map((e) => e?.toJson())?.toList(),
      'abilities': instance.abilities?.map((e) => e?.toJson())?.toList(),
      'patchlogs': instance.patchlogs?.map((e) => e?.toJson())?.toList(),
    };
