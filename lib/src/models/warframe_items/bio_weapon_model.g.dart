// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bio_weapon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BioWeaponModel _$BioWeaponModelFromJson(Map json) {
  return BioWeaponModel(
    uniqueName: json['uniqueName'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    aura: json['aura'] as String,
    health: json['health'] as int,
    shield: json['shield'] as int,
    armor: json['armor'] as int,
    power: json['power'] as int,
    masteryReq: json['masteryReq'] as int,
    sprintSpeed: (json['sprintSpeed'] as num)?.toDouble(),
    passiveDescription: json['passiveDescription'] as String,
    abilities: (json['abilities'] as List)
        ?.map((e) => e == null
            ? null
            : AbilityModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    buildPrice: json['buildPrice'] as int,
    buildTime: json['buildTime'] as int,
    skipBuildTimePrice: json['skipBuildTimePrice'] as int,
    buildQuantity: json['buildQuantity'] as int,
    consumeOnBuild: json['consumeOnBuild'] as bool,
    components: (json['components'] as List)
        ?.map((e) => e == null
            ? null
            : ComponentModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    type: json['type'] as String,
    imageName: json['imageName'] as String,
    category: json['category'] as String,
    productCategory: json['productCategory'] as String,
    tradable: json['tradable'] as bool,
    patchlogs: (json['patchlogs'] as List)
        ?.map((e) => e == null
            ? null
            : PatchlogModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    wikiaThumbnail: json['wikiaThumbnail'] as String,
    wikiaUrl: json['wikiaUrl'] as String,
    sex: json['sex'] as String,
    introduced: json['introduced'] as String,
    polarities: (json['polarities'] as List)?.map((e) => e as String)?.toList(),
    color: json['color'] as int,
  );
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
      'tradable': instance.tradable,
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
