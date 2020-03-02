// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alerts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Alert _$AlertFromJson(Map<String, dynamic> json) {
  return Alert(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    active: json['active'] as bool,
    mission: json['mission'] == null
        ? null
        : Mission.fromJson(json['mission'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AlertToJson(Alert instance) => <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'active': instance.active,
      'mission': instance.mission?.toJson(),
    };

Mission _$MissionFromJson(Map<String, dynamic> json) {
  return Mission(
    node: json['node'] as String,
    type: json['type'] as String,
    faction: json['faction'] as String,
    minEnemyLevel: json['minEnemyLevel'] as int,
    maxEnemyLevel: json['maxEnemyLevel'] as int,
    maxWaveNum: json['maxWaveNum'] as int,
    nightmare: json['nightmare'] as bool,
    archwingRequired: json['archwingRequired'] as bool,
    reward: json['reward'] == null
        ? null
        : Reward.fromJson(json['reward'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MissionToJson(Mission instance) => <String, dynamic>{
      'node': instance.node,
      'type': instance.type,
      'faction': instance.faction,
      'minEnemyLevel': instance.minEnemyLevel,
      'maxEnemyLevel': instance.maxEnemyLevel,
      'maxWaveNum': instance.maxWaveNum,
      'nightmare': instance.nightmare,
      'archwingRequired': instance.archwingRequired,
      'reward': instance.reward?.toJson(),
    };
