// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persistent_enemies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersistentEnemies _$PersistentEnemiesFromJson(Map<String, dynamic> json) {
  return PersistentEnemies(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    agentType: json['agentType'] as String,
    locationTag: json['locationTag'] as String,
    lastDiscoveredAt: json['lastDiscoveredAt'] as String,
    lastDiscoveredTime: json['lastDiscoveredTime'] == null
        ? null
        : DateTime.parse(json['lastDiscoveredTime'] as String),
    fleeDamage: json['fleeDamage'] as int,
    region: json['region'] as int,
    rank: json['rank'] as int,
    healthPercent: json['healthPercent'] as int,
    isDiscovered: json['isDiscovered'] as bool,
    isUsingTicketing: json['isUsingTicketing'] as bool,
  );
}

Map<String, dynamic> _$PersistentEnemiesToJson(PersistentEnemies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'agentType': instance.agentType,
      'locationTag': instance.locationTag,
      'lastDiscoveredAt': instance.lastDiscoveredAt,
      'lastDiscoveredTime': instance.lastDiscoveredTime?.toIso8601String(),
      'fleeDamage': instance.fleeDamage,
      'region': instance.region,
      'rank': instance.rank,
      'healthPercent': instance.healthPercent,
      'isDiscovered': instance.isDiscovered,
      'isUsingTicketing': instance.isUsingTicketing,
    };
