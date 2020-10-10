// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nightwave_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NightwaveModel _$NightwaveModelFromJson(Map json) {
  return $checkedNew('NightwaveModel', json, () {
    final val = NightwaveModel(
      id: $checkedConvert(json, 'id', (v) => v as String),
      activation: $checkedConvert(json, 'activation',
          (v) => v == null ? null : DateTime.parse(v as String)),
      expiry: $checkedConvert(json, 'expiry',
          (v) => v == null ? null : DateTime.parse(v as String)),
      tag: $checkedConvert(json, 'tag', (v) => v as String),
      active: $checkedConvert(json, 'active', (v) => v as bool),
      season: $checkedConvert(json, 'season', (v) => v as int),
      phase: $checkedConvert(json, 'phase', (v) => v as int),
      possibleChallenges: $checkedConvert(
          json,
          'possibleChallenges',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : ChallengeModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
      activeChallenges: $checkedConvert(
          json,
          'activeChallenges',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : ChallengeModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
      rewardTypes: $checkedConvert(json, 'rewardTypes',
          (v) => (v as List)?.map((e) => e as String)?.toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$NightwaveModelToJson(NightwaveModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'tag': instance.tag,
      'active': instance.active,
      'season': instance.season,
      'phase': instance.phase,
      'rewardTypes': instance.rewardTypes,
      'possibleChallenges':
          instance.possibleChallenges?.map((e) => e?.toJson())?.toList(),
      'activeChallenges':
          instance.activeChallenges?.map((e) => e?.toJson())?.toList(),
    };

ChallengeModel _$ChallengeModelFromJson(Map json) {
  return $checkedNew('ChallengeModel', json, () {
    final val = ChallengeModel(
      id: $checkedConvert(json, 'id', (v) => v as String),
      activation: $checkedConvert(json, 'activation',
          (v) => v == null ? null : DateTime.parse(v as String)),
      expiry: $checkedConvert(json, 'expiry',
          (v) => v == null ? null : DateTime.parse(v as String)),
      title: $checkedConvert(json, 'title', (v) => v as String),
      desc: $checkedConvert(json, 'desc', (v) => v as String),
      active: $checkedConvert(json, 'active', (v) => v as bool),
      isDaily: $checkedConvert(json, 'isDaily', (v) => v as bool),
      isElite: $checkedConvert(json, 'isElite', (v) => v as bool),
      reputation: $checkedConvert(json, 'reputation', (v) => v as int),
    );
    return val;
  });
}

Map<String, dynamic> _$ChallengeModelToJson(ChallengeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'title': instance.title,
      'desc': instance.desc,
      'active': instance.active,
      'isDaily': instance.isDaily,
      'isElite': instance.isElite,
      'reputation': instance.reputation,
    };
