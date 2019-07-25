import 'package:json_annotation/json_annotation.dart';

import 'worldstateObject.dart';

part 'persistentEnemies.g.dart';

@JsonSerializable()
class PersistentEnemies extends WorldstateObject {
  PersistentEnemies({
    String id,
    DateTime activation,
    DateTime expiry,
    this.agentType,
    this.locationTag,
    this.lastDiscoveredAt,
    this.lastDiscoveredTime,
    this.fleeDamage,
    this.region,
    this.rank,
    this.healthPercent,
    this.isDiscovered,
    this.isUsingTicketing,
  }) : super(id: id, activation: activation, expiry: expiry, props: [
          agentType,
          locationTag,
          lastDiscoveredAt,
          lastDiscoveredTime,
          fleeDamage,
          region,
          rank,
          healthPercent,
          isDiscovered,
          isUsingTicketing
        ]);

  factory PersistentEnemies.fromJson(Map<String, dynamic> json) =>
      _$PersistentEnemiesFromJson(json);

  final String agentType, locationTag, lastDiscoveredAt;
  final DateTime lastDiscoveredTime;
  final int fleeDamage, region, rank;
  final num healthPercent;
  final bool isDiscovered, isUsingTicketing;

  Map<String, dynamic> toJson() => _$PersistentEnemiesToJson(this);
}
