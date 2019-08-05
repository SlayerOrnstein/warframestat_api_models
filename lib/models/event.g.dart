// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) {
  return Event(
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
    rewards: (json['rewards'] as List)
        ?.map((e) =>
            e == null ? null : Reward.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    interimSteps: (json['interimSteps'] as List)
        ?.map((e) =>
            e == null ? null : _InterimStep.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'faction': instance.faction,
      'description': instance.description,
      'victimNode': instance.victimNode,
      'node': instance.node,
      'tooltip': instance.tooltip,
      'health': instance.health,
      'rewards': instance.rewards,
      'interimSteps': instance.interimSteps,
    };

_InterimStep _$_InterimStepFromJson(Map<String, dynamic> json) {
  return _InterimStep(
    goal: json['goal'] as int,
    reward: json['reward'] == null
        ? null
        : Reward.fromJson(json['reward'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_InterimStepToJson(_InterimStep instance) =>
    <String, dynamic>{
      'goal': instance.goal,
      'reward': instance.reward,
    };
