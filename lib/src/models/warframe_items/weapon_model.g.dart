// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeaponModel _$WeaponModelFromJson(Map json) {
  return $checkedNew('WeaponModel', json, () {
    final val = WeaponModel(
      uniqueName: $checkedConvert(json, 'uniqueName', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      type: $checkedConvert(json, 'type', (v) => v as String),
      imageName: $checkedConvert(json, 'imageName', (v) => v as String),
      category: $checkedConvert(json, 'category', (v) => v as String),
      productCategory:
          $checkedConvert(json, 'productCategory', (v) => v as String),
      isTradable: $checkedConvert(json, 'isTradable', (v) => v as bool),
      wikiaThumbnail:
          $checkedConvert(json, 'wikiaThumbnail', (v) => v as String),
      wikiaUrl: $checkedConvert(json, 'wikiaUrl', (v) => v as String),
      secondsPerShot: $checkedConvert(json, 'secondsPerShot', (v) => v as num),
      damagePerShot: $checkedConvert(json, 'damagePerShot',
          (v) => (v as List)?.map((e) => e as num)?.toList()),
      magazineSize: $checkedConvert(json, 'magazineSize', (v) => v as num),
      reloadTime: $checkedConvert(json, 'reloadTime', (v) => v as num),
      totalDamage: $checkedConvert(json, 'totalDamage', (v) => v as num),
      damagePerSecond:
          $checkedConvert(json, 'damagePerSecond', (v) => v as num),
      trigger: $checkedConvert(json, 'trigger', (v) => v as String),
      accuracy: $checkedConvert(json, 'accuracy', (v) => v as num),
      criticalChance: $checkedConvert(json, 'criticalChance', (v) => v as num),
      criticalMultiplier:
          $checkedConvert(json, 'criticalMultiplier', (v) => v as num),
      procChance: $checkedConvert(json, 'procChance', (v) => v as num),
      fireRate: $checkedConvert(json, 'fireRate', (v) => v as num),
      chargeAttack: $checkedConvert(json, 'chargeAttack', (v) => v as num),
      spinAttack: $checkedConvert(json, 'spinAttack', (v) => v as num),
      leapAttack: $checkedConvert(json, 'leapAttack', (v) => v as num),
      wallAttack: $checkedConvert(json, 'wallAttack', (v) => v as num),
      slot: $checkedConvert(json, 'slot', (v) => v as num),
      noise: $checkedConvert(json, 'noise', (v) => v as String),
      sentinel: $checkedConvert(json, 'sentinel', (v) => v as bool),
      masteryReq: $checkedConvert(json, 'masteryReq', (v) => v as num),
      omegaAttenuation:
          $checkedConvert(json, 'omegaAttenuation', (v) => v as num),
      channelingDrain:
          $checkedConvert(json, 'channelingDrain', (v) => v as num),
      channelingDamagemultiplier:
          $checkedConvert(json, 'channelingDamagemultiplier', (v) => v as num),
      buildPrice: $checkedConvert(json, 'buildPrice', (v) => v as num),
      buildTime: $checkedConvert(json, 'buildTime', (v) => v as num),
      skipBuildTime: $checkedConvert(json, 'skipBuildTime', (v) => v as num),
      buildQuantity: $checkedConvert(json, 'buildQuantity', (v) => v as num),
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
      damage: $checkedConvert(json, 'damage', (v) => v),
      damageTypes: $checkedConvert(
          json,
          'damageTypes',
          (v) => (v as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )),
      marketCost: $checkedConvert(json, 'marketCost', (v) => v),
      polarites: $checkedConvert(json, 'polarites',
          (v) => (v as List)?.map((e) => e as String)?.toList()),
      tags: $checkedConvert(
          json, 'tags', (v) => (v as List)?.map((e) => e as String)?.toList()),
      vaulted: $checkedConvert(json, 'vaulted', (v) => v as bool),
      disposition: $checkedConvert(json, 'disposition', (v) => v as num),
    );
    return val;
  });
}

Map<String, dynamic> _$WeaponModelToJson(WeaponModel instance) =>
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
      'secondsPerShot': instance.secondsPerShot,
      'damagePerShot': instance.damagePerShot,
      'magazineSize': instance.magazineSize,
      'reloadTime': instance.reloadTime,
      'totalDamage': instance.totalDamage,
      'damagePerSecond': instance.damagePerSecond,
      'trigger': instance.trigger,
      'accuracy': instance.accuracy,
      'criticalChance': instance.criticalChance,
      'criticalMultiplier': instance.criticalMultiplier,
      'procChance': instance.procChance,
      'fireRate': instance.fireRate,
      'chargeAttack': instance.chargeAttack,
      'spinAttack': instance.spinAttack,
      'leapAttack': instance.leapAttack,
      'wallAttack': instance.wallAttack,
      'slot': instance.slot,
      'noise': instance.noise,
      'sentinel': instance.sentinel,
      'masteryReq': instance.masteryReq,
      'omegaAttenuation': instance.omegaAttenuation,
      'channelingDrain': instance.channelingDrain,
      'channelingDamagemultiplier': instance.channelingDamagemultiplier,
      'buildPrice': instance.buildPrice,
      'buildTime': instance.buildTime,
      'skipBuildTime': instance.skipBuildTime,
      'buildQuantity': instance.buildQuantity,
      'consumeOnBuild': instance.consumeOnBuild,
      'damage': instance.damage,
      'damageTypes': instance.damageTypes,
      'marketCost': instance.marketCost,
      'polarites': instance.polarites,
      'tags': instance.tags,
      'vaulted': instance.vaulted,
      'disposition': instance.disposition,
      'components': instance.components?.map((e) => e?.toJson())?.toList(),
    };
