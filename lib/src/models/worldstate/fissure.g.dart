// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fissure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoidFissure _$VoidFissureFromJson(Map<String, dynamic> json) {
  return VoidFissure(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    node: json['node'] as String,
    missionType: json['missionType'] as String,
    enemy: json['enemy'] as String,
    tier: json['tier'] as String,
    tierNum: json['tierNum'] as int,
    active: json['active'] as bool,
    expired: json['expired'] as bool,
  );
}

Map<String, dynamic> _$VoidFissureToJson(VoidFissure instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'node': instance.node,
      'missionType': instance.missionType,
      'enemy': instance.enemy,
      'tier': instance.tier,
      'tierNum': instance.tierNum,
      'active': instance.active,
      'expired': instance.expired,
    };
