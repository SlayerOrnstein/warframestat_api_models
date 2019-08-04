// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericEvent _$GenericEventFromJson(Map<String, dynamic> json) {
  return GenericEvent(
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
    health: json['health'] as String,
    maximumScore: json['maximumScore'] as num,
    currentScore: json['currentScore'] as num,
    rewards: (json['rewards'] as List)
        ?.map((e) =>
            e == null ? null : Reward.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GenericEventToJson(GenericEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'faction': instance.faction,
      'description': instance.description,
      'victimNode': instance.victimNode,
      'node': instance.node,
      'tooltip': instance.tooltip,
      'health': instance.health,
      'currentScore': instance.currentScore,
      'maximumScore': instance.maximumScore,
      'rewards': instance.rewards,
    };
