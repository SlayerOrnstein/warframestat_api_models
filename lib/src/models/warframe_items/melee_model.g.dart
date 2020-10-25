// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'melee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeleeModel _$MeleeModelFromJson(Map json) {
  return $checkedNew('MeleeModel', json, () {
    final val = MeleeModel(
      uniqueName: $checkedConvert(json, 'uniqueName', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      type: $checkedConvert(json, 'type', (v) => v as String),
      imageName: $checkedConvert(json, 'imageName', (v) => v as String),
      category: $checkedConvert(json, 'category', (v) => v as String),
      productCategory:
          $checkedConvert(json, 'productCategory', (v) => v as String),
      damagePerShot: $checkedConvert(json, 'damagePerShot',
          (v) => (v as List)?.map((e) => (e as num)?.toDouble())?.toList()),
      totalDamage: $checkedConvert(json, 'totalDamage', (v) => v as int),
      criticalChance: $checkedConvert(
          json, 'criticalChance', (v) => (v as num)?.toDouble()),
      criticalMultiplier: $checkedConvert(
          json, 'criticalMultiplier', (v) => (v as num)?.toDouble()),
      procChance:
          $checkedConvert(json, 'procChance', (v) => (v as num)?.toDouble()),
      attackSpeed:
          $checkedConvert(json, 'fireRate', (v) => (v as num)?.toDouble()),
      masteryReq: $checkedConvert(json, 'masteryReq', (v) => v as int),
      slot: $checkedConvert(json, 'slot', (v) => v as int),
      omegaAttenuation: $checkedConvert(
          json, 'omegaAttenuation', (v) => (v as num)?.toDouble()),
      blockingAngle: $checkedConvert(json, 'blockingAngle', (v) => v as int),
      comboDuration: $checkedConvert(json, 'comboDuration', (v) => v as int),
      followThrough:
          $checkedConvert(json, 'followThrough', (v) => (v as num)?.toDouble()),
      range: $checkedConvert(json, 'range', (v) => (v as num)?.toDouble()),
      slamAttack: $checkedConvert(json, 'slamAttack', (v) => v as int),
      slamRadialDamage:
          $checkedConvert(json, 'slamRadialDamage', (v) => v as int),
      slamRadius: $checkedConvert(json, 'slamRadius', (v) => v as int),
      slideAttack: $checkedConvert(json, 'slideAttack', (v) => v as int),
      heavyAttackDamage:
          $checkedConvert(json, 'heavyAttackDamage', (v) => v as int),
      heavySlamAttack:
          $checkedConvert(json, 'heavySlamAttack', (v) => v as int),
      heavySlamRadialDamage:
          $checkedConvert(json, 'heavySlamRadialDamage', (v) => v as int),
      heavySlamRadius:
          $checkedConvert(json, 'heavySlamRadius', (v) => v as int),
      windUp: $checkedConvert(json, 'windUp', (v) => (v as num)?.toDouble()),
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
      tradable: $checkedConvert(json, 'tradable', (v) => v as bool),
      channeling:
          $checkedConvert(json, 'channeling', (v) => (v as num)?.toDouble()),
      damageTypes: $checkedConvert(
          json,
          'damageTypes',
          (v) => (v as Map)?.map(
                (k, e) => MapEntry(k as String, (e as num)?.toDouble()),
              )),
      marketCost: $checkedConvert(json, 'marketCost', (v) => v as int),
      polarities: $checkedConvert(json, 'polarities',
          (v) => (v as List)?.map((e) => e as String)?.toList()),
      stancePolarity:
          $checkedConvert(json, 'stancePolarity', (v) => v as String),
      tags: $checkedConvert(
          json, 'tags', (v) => (v as List)?.map((e) => e as String)?.toList()),
      disposition: $checkedConvert(json, 'disposition', (v) => v as int),
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
    );
    return val;
  }, fieldKeyMap: const {'attackSpeed': 'fireRate'});
}

Map<String, dynamic> _$MeleeModelToJson(MeleeModel instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'imageName': instance.imageName,
      'category': instance.category,
      'productCategory': instance.productCategory,
      'wikiaUrl': instance.wikiaUrl,
      'wikiaThumbnail': instance.wikiaThumbnail,
      'damagePerShot': instance.damagePerShot,
      'totalDamage': instance.totalDamage,
      'criticalChance': instance.criticalChance,
      'criticalMultiplier': instance.criticalMultiplier,
      'procChance': instance.procChance,
      'masteryReq': instance.masteryReq,
      'slot': instance.slot,
      'omegaAttenuation': instance.omegaAttenuation,
      'blockingAngle': instance.blockingAngle,
      'comboDuration': instance.comboDuration,
      'followThrough': instance.followThrough,
      'range': instance.range,
      'slamAttack': instance.slamAttack,
      'slamRadialDamage': instance.slamRadialDamage,
      'slamRadius': instance.slamRadius,
      'slideAttack': instance.slideAttack,
      'heavyAttackDamage': instance.heavyAttackDamage,
      'heavySlamAttack': instance.heavySlamAttack,
      'heavySlamRadialDamage': instance.heavySlamRadialDamage,
      'heavySlamRadius': instance.heavySlamRadius,
      'windUp': instance.windUp,
      'buildPrice': instance.buildPrice,
      'buildTime': instance.buildTime,
      'skipBuildTimePrice': instance.skipBuildTimePrice,
      'buildQuantity': instance.buildQuantity,
      'consumeOnBuild': instance.consumeOnBuild,
      'tradable': instance.tradable,
      'channeling': instance.channeling,
      'damageTypes': instance.damageTypes,
      'marketCost': instance.marketCost,
      'polarities': instance.polarities,
      'stancePolarity': instance.stancePolarity,
      'tags': instance.tags,
      'disposition': instance.disposition,
      'fireRate': instance.attackSpeed,
      'components': instance.components?.map((e) => e?.toJson())?.toList(),
      'patchlogs': instance.patchlogs?.map((e) => e?.toJson())?.toList(),
    };
