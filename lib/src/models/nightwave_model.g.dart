// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nightwave_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChallengeModel _$ChallengeModelFromJson(Map<String, dynamic> json) {
  return ChallengeModel(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    title: json['title'] as String,
    desc: json['desc'] as String,
    active: json['active'] as bool,
    isDaily: json['isDaily'] as bool,
    isElite: json['isElite'] as bool,
    reputation: json['reputation'] as int,
  );
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
