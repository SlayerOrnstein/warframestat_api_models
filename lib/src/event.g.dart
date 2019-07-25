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
    affiliatedWith: json['affiliatedWith'] as String,
    victimNode: json['victimNode'] as String,
    health: json['health'] as String,
    node: json['node'] as String,
    tooltip: json['tooltip'] as String,
    currentScore: json['currentScore'] as num,
    maximumScore: json['maximumScore'] as num,
    rewards: (json['rewards'] as List)
        ?.map((e) =>
            e == null ? null : Reward.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jobs: (json['jobs'] as List)
        ?.map(
            (e) => e == null ? null : Jobs.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'faction': instance.faction,
      'description': instance.description,
      'affiliatedWith': instance.affiliatedWith,
      'victimNode': instance.victimNode,
      'health': instance.health,
      'node': instance.node,
      'tooltip': instance.tooltip,
      'currentScore': instance.currentScore,
      'maximumScore': instance.maximumScore,
      'rewards': instance.rewards,
      'jobs': instance.jobs,
    };
