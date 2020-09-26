// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeaponModel _$WeaponModelFromJson(Map json) {
  return WeaponModel(
    uniqueName: json['uniqueName'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    type: json['type'] as String,
    imageName: json['imageName'] as String,
    category: json['category'] as String,
    productCategory: json['productCategory'] as String,
    isTradable: json['isTradable'] as bool,
    wikiaThumbnail: json['wikiaThumbnail'] as String,
    wikiaUrl: json['wikiaUrl'] as String,
    secondsPerShot: json['secondsPerShot'] as num,
    damagePerShot:
        (json['damagePerShot'] as List)?.map((e) => e as num)?.toList(),
    magazineSize: json['magazineSize'] as num,
    reloadTime: json['reloadTime'] as num,
    totalDamage: json['totalDamage'] as num,
    damagePerSecond: json['damagePerSecond'] as num,
    trigger: json['trigger'] as String,
    accuracy: json['accuracy'] as num,
    criticalChance: json['criticalChance'] as num,
    criticalMultiplier: json['criticalMultiplier'] as num,
    procChance: json['procChance'] as num,
    fireRate: json['fireRate'] as num,
    chargeAttack: json['chargeAttack'] as num,
    spinAttack: json['spinAttack'] as num,
    leapAttack: json['leapAttack'] as num,
    wallAttack: json['wallAttack'] as num,
    slot: json['slot'] as num,
    noise: json['noise'] as String,
    sentinel: json['sentinel'] as bool,
    masteryReq: json['masteryReq'] as num,
    omegaAttenuation: json['omegaAttenuation'] as num,
    channelingDrain: json['channelingDrain'] as num,
    channelingDamagemultiplier: json['channelingDamagemultiplier'] as num,
    buildPrice: json['buildPrice'] as num,
    buildTime: json['buildTime'] as num,
    skipBuildTime: json['skipBuildTime'] as num,
    buildQuantity: json['buildQuantity'] as num,
    consumeOnBuild: json['consumeOnBuild'] as bool,
    components: (json['components'] as List)
        ?.map((e) => e == null
            ? null
            : ComponentModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    damage: json['damage'],
    damageTypes: (json['damageTypes'] as Map)?.map(
      (k, e) => MapEntry(k as String, e),
    ),
    marketCost: json['marketCost'],
    polarites: (json['polarites'] as List)?.map((e) => e as String)?.toList(),
    tags: (json['tags'] as List)?.map((e) => e as String)?.toList(),
    vaulted: json['vaulted'] as bool,
    disposition: json['disposition'] as num,
  );
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
