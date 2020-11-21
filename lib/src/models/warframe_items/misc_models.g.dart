// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misc_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicItemModel _$BasicItemModelFromJson(Map json) {
  return $checkedNew('BasicItemModel', json, () {
    final val = BasicItemModel(
      uniqueName: $checkedConvert(json, 'uniqueName', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      type: $checkedConvert(json, 'type', (v) => v as String),
      imageName: $checkedConvert(json, 'imageName', (v) => v as String),
      productCategory:
          $checkedConvert(json, 'productCategory', (v) => v as String),
      category: $checkedConvert(json, 'category', (v) => v as String),
      tradable: $checkedConvert(json, 'tradable', (v) => v as bool),
      masteryReq: $checkedConvert(json, 'masteryReq', (v) => v as int),
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
      buildPrice: $checkedConvert(json, 'buildPrice', (v) => v as int),
      buildTime: $checkedConvert(json, 'buildTime', (v) => v as int),
      skipBuildTimePrice:
          $checkedConvert(json, 'skipBuildTimePrice', (v) => v as int),
      buildQuantity: $checkedConvert(json, 'buildQuantity', (v) => v as int),
      consumeOnBuild: $checkedConvert(json, 'consumeOnBuild', (v) => v as bool),
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
      wikiaUrl: $checkedConvert(json, 'wikiaUrl', (v) => v as String),
      wikiaThumbnail:
          $checkedConvert(json, 'wikiaThumbnail', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$BasicItemModelToJson(BasicItemModel instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'imageName': instance.imageName,
      'productCategory': instance.productCategory,
      'category': instance.category,
      'tradable': instance.tradable,
      'wikiaUrl': instance.wikiaUrl,
      'wikiaThumbnail': instance.wikiaThumbnail,
      'masteryReq': instance.masteryReq,
      'buildPrice': instance.buildPrice,
      'buildTime': instance.buildTime,
      'skipBuildTimePrice': instance.skipBuildTimePrice,
      'buildQuantity': instance.buildQuantity,
      'consumeOnBuild': instance.consumeOnBuild,
      'components': instance.components?.map((e) => e?.toJson())?.toList(),
      'patchlogs': instance.patchlogs?.map((e) => e?.toJson())?.toList(),
      'drops': instance.drops?.map((e) => e?.toJson())?.toList(),
    };

SolNodeModel _$SolNodeModelFromJson(Map json) {
  return $checkedNew('SolNodeModel', json, () {
    final val = SolNodeModel(
      uniqueName: $checkedConvert(json, 'uniqueName', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      type: $checkedConvert(json, 'type', (v) => v as String),
      imageName: $checkedConvert(json, 'imageName', (v) => v as String),
      category: $checkedConvert(json, 'category', (v) => v as String),
      tradable: $checkedConvert(json, 'tradable', (v) => v as bool),
      systemIndex: $checkedConvert(json, 'systemIndex', (v) => v as int),
      systemName: $checkedConvert(json, 'systemName', (v) => v as String),
      masterReq: $checkedConvert(json, 'masterReq', (v) => v as int),
      missionIndex: $checkedConvert(json, 'missionIndex', (v) => v as int),
      factionIndex: $checkedConvert(json, 'factionIndex', (v) => v as int),
      minEnemyLevel: $checkedConvert(json, 'minEnemyLevel', (v) => v as int),
      maxEnemyLevel: $checkedConvert(json, 'maxEnemyLevel', (v) => v as int),
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
    );
    return val;
  });
}

Map<String, dynamic> _$SolNodeModelToJson(SolNodeModel instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'imageName': instance.imageName,
      'category': instance.category,
      'tradable': instance.tradable,
      'systemIndex': instance.systemIndex,
      'systemName': instance.systemName,
      'masterReq': instance.masterReq,
      'missionIndex': instance.missionIndex,
      'factionIndex': instance.factionIndex,
      'minEnemyLevel': instance.minEnemyLevel,
      'maxEnemyLevel': instance.maxEnemyLevel,
      'patchlogs': instance.patchlogs?.map((e) => e?.toJson())?.toList(),
    };
