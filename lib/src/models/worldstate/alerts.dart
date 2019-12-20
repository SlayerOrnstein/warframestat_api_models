import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../worldstate_objects.dart';
import 'reward.dart';

part 'alerts.g.dart';

@JsonSerializable()
class Alert extends WorldstateObject {
  const Alert({
    String id,
    DateTime activation,
    DateTime expiry,
    this.active,
    this.mission,
  }) : super(id: id, activation: activation, expiry: expiry);

  factory Alert.fromJson(Map<String, dynamic> json) => _$AlertFromJson(json);

  final bool active;
  final Mission mission;

  Map<String, dynamic> toJson() => _$AlertToJson(this);

  @override
  List<Object> get props => super.props..addAll([active, mission]);

  @override
  Alert copyWith({
    String id,
    DateTime activation,
    DateTime expiry,
    bool active,
    Mission mission,
  }) {
    return Alert(
      id: id ?? this.id,
      activation: activation ?? this.activation,
      expiry: expiry ?? this.expiry,
      active: active ?? this.active,
      mission: mission ?? this.mission,
    );
  }
}

@JsonSerializable()
class Mission extends Equatable {
  const Mission({
    this.node,
    this.type,
    this.faction,
    this.minEnemyLevel,
    this.maxEnemyLevel,
    this.maxWaveNum,
    this.nightmare,
    this.archwingRequired,
    this.reward,
  });

  factory Mission.fromJson(Map<String, dynamic> json) =>
      _$MissionFromJson(json);

  final String node, type, faction;
  final int minEnemyLevel, maxEnemyLevel, maxWaveNum;
  final bool nightmare, archwingRequired;

  final Reward reward;

  Map<String, dynamic> toJson() => _$MissionToJson(this);

  @override
  List<Object> get props => [
        node,
        type,
        minEnemyLevel,
        maxEnemyLevel,
        maxWaveNum,
        nightmare,
        archwingRequired,
        reward
      ];

  Mission copyWith({
    String node,
    String type,
    String faction,
    int minEnemyLevel,
    int maxEnemyLevel,
    int maxWaveNum,
    bool nightmare,
    bool archwingRequired,
  }) {
    return Mission(
      node: node ?? this.node,
      type: type ?? this.type,
      faction: faction ?? this.faction,
      minEnemyLevel: minEnemyLevel ?? this.minEnemyLevel,
      maxEnemyLevel: maxEnemyLevel ?? this.maxEnemyLevel,
      maxWaveNum: maxWaveNum ?? this.maxWaveNum,
      nightmare: nightmare ?? this.nightmare,
      archwingRequired: archwingRequired ?? this.archwingRequired,
    );
  }
}
