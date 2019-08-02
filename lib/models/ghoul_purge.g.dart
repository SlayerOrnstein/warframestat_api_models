// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ghoul_purge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GhoulPurge _$GhoulPurgeFromJson(Map<String, dynamic> json) {
  return GhoulPurge(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    description: json['description'] as String,
    victimNode: json['victimNode'] as String,
    node: json['node'] as String,
    tooltip: json['tooltip'] as String,
    health: json['health'] as String,
    jobs: (json['jobs'] as List)
        ?.map((e) => e == null ? null : Job.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GhoulPurgeToJson(GhoulPurge instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'description': instance.description,
      'victimNode': instance.victimNode,
      'node': instance.node,
      'tooltip': instance.tooltip,
      'health': instance.health,
      'jobs': instance.jobs,
    };
