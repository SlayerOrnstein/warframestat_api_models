// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nightwave.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nightwave _$NightwaveFromJson(Map<String, dynamic> json) {
  return Nightwave(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    startString: json['startString'] as String,
    tag: json['tag'] as String,
    active: json['active'] as bool,
    season: json['season'] as num,
    phase: json['phase'] as num,
    possibleChallenges: (json['possibleChallenges'] as List)
        ?.map((e) =>
            e == null ? null : Challenge.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    activeChallenges: (json['activeChallenges'] as List)
        ?.map((e) =>
            e == null ? null : Challenge.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rewardTypes:
        (json['rewardTypes'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$NightwaveToJson(Nightwave instance) => <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'startString': instance.startString,
      'tag': instance.tag,
      'active': instance.active,
      'season': instance.season,
      'phase': instance.phase,
      'possibleChallenges': instance.possibleChallenges,
      'activeChallenges': instance.activeChallenges,
      'rewardTypes': instance.rewardTypes,
    };

Challenge _$ChallengeFromJson(Map<String, dynamic> json) {
  return Challenge(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    startString: json['startString'] as String,
    desc: json['desc'] as String,
    title: json['title'] as String,
    active: json['active'] as bool,
    isDaily: json['isDaily'] as bool,
    isElite: json['isElite'] as bool,
    reputation: json['reputation'] as num,
  );
}

Map<String, dynamic> _$ChallengeToJson(Challenge instance) => <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'startString': instance.startString,
      'desc': instance.desc,
      'title': instance.title,
      'active': instance.active,
      'isDaily': instance.isDaily,
      'isElite': instance.isElite,
      'reputation': instance.reputation,
    };
