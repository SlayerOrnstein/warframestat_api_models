// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mod_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModModel _$ModModelFromJson(Map json) {
  return ModModel(
    uniqueName: json['uniqueName'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    polarity: json['polarity'] as String,
    rarity: json['rarity'] as String,
    baseDrain: json['baseDrain'] as int,
    fusionLimit: json['fusionLimit'] as int,
    compatName: json['compatName'] as String,
    type: json['type'] as String,
    levelStats: (json['levelStats'] as List)
        ?.map((e) => (e as Map)?.map(
              (k, e) => MapEntry(
                  k as String, (e as List)?.map((e) => e as String)?.toList()),
            ))
        ?.toList(),
    category: json['category'] as String,
    isAugment: json['isAugment'] as bool,
    isTradable: json['isTradable'] as bool,
    patchlogs: (json['patchlogs'] as List)
        ?.map((e) => e == null
            ? null
            : PatchlogModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    wikiaThumbnail: json['wikiaThumbnail'] as String,
    wikiaUrl: json['wikiaUrl'] as String,
    transmutable: json['transmutable'] as bool,
  );
}

Map<String, dynamic> _$ModModelToJson(ModModel instance) => <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'category': instance.category,
      'isTradable': instance.isTradable,
      'wikiaUrl': instance.wikiaUrl,
      'wikiaThumbnail': instance.wikiaThumbnail,
      'polarity': instance.polarity,
      'rarity': instance.rarity,
      'compatName': instance.compatName,
      'baseDrain': instance.baseDrain,
      'fusionLimit': instance.fusionLimit,
      'levelStats': instance.levelStats,
      'isAugment': instance.isAugment,
      'transmutable': instance.transmutable,
      'patchlogs': instance.patchlogs?.map((e) => e?.toJson())?.toList(),
    };
