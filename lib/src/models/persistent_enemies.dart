import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_model/src/objects/worldstate_object.dart';

part 'persistent_enemies.g.dart';

@JsonSerializable()
class PersistentEnemies extends WorldstateObject {
  const PersistentEnemies({
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
  }) : super(id: id, activation: activation, expiry: expiry);

  factory PersistentEnemies.fromJson(Map<String, dynamic> json) =>
      _$PersistentEnemiesFromJson(json);

  final String agentType, locationTag, lastDiscoveredAt;
  final DateTime lastDiscoveredTime;
  final int fleeDamage, region, rank, healthPercent;
  final bool isDiscovered, isUsingTicketing;

  Map<String, dynamic> toJson() => _$PersistentEnemiesToJson(this);

  @override
  List<Object> get props => super.props
    ..addAll([
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

  @override
  WorldstateObject copyWith({
    String id,
    DateTime activation,
    DateTime expiry,
    String agentType,
    String locationTag,
    String lastDiscoveredAt,
    DateTime lastDiscoveredTime,
    num fleeDamage,
    num region,
    num rank,
    num healthPercent,
    bool isDiscovered,
    bool isUsingTicketing,
  }) {
    return PersistentEnemies(
      id: id ?? this.id,
      activation: activation ?? this.activation,
      expiry: expiry ?? this.expiry,
      agentType: agentType ?? this.agentType,
      locationTag: locationTag ?? this.locationTag,
      lastDiscoveredAt: lastDiscoveredAt ?? this.lastDiscoveredAt,
      lastDiscoveredTime: lastDiscoveredTime ?? this.lastDiscoveredTime,
      fleeDamage: fleeDamage ?? this.fleeDamage,
      region: region ?? this.region,
      rank: rank ?? this.rank,
      healthPercent: healthPercent ?? this.healthPercent,
      isDiscovered: isDiscovered ?? this.isDiscovered,
      isUsingTicketing: isUsingTicketing ?? this.isUsingTicketing,
    );
  }
}
