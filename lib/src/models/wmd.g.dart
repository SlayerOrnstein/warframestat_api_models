// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wmd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Wmd _$WmdFromJson(Map<String, dynamic> json) {
  return Wmd(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    faction: json['faction'] as String,
    description: json['description'] as String,
    victimNode: json['victimNode'] as String,
    node: json['node'] as String,
    tooltip: json['tooltip'] as String,
    rewards: (json['rewards'] as List)
        ?.map((e) =>
            e == null ? null : Reward.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    health: json['health'] as String,
  );
}

Map<String, dynamic> _$WmdToJson(Wmd instance) => <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'faction': instance.faction,
      'description': instance.description,
      'victimNode': instance.victimNode,
      'node': instance.node,
      'tooltip': instance.tooltip,
      'rewards': instance.rewards,
      'health': instance.health,
    };
