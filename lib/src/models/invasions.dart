import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_model/src/objects/worldstate_object.dart';

import 'reward.dart';

part 'invasions.g.dart';

@JsonSerializable()
class Invasion extends WorldstateObject {
  const Invasion({
    String id,
    DateTime activation,
    DateTime expiry,
    this.node,
    this.desc,
    this.attackingFaction,
    this.defendingFaction,
    this.eta,
    this.vsInfestation,
    this.completed,
    this.completion,
    this.count,
    this.attackerReward,
    this.defenderReward,
  }) : super(id: id, activation: activation, expiry: expiry);

  factory Invasion.fromJson(Map<String, dynamic> json) =>
      _$InvasionFromJson(json);

  final String node, desc, attackingFaction, defendingFaction, eta;
  final bool vsInfestation, completed;
  final num completion, count;
  final Reward attackerReward, defenderReward;

  Map<String, dynamic> toJson() => _$InvasionToJson(this);

  @override
  List<Object> get props => super.props
    ..addAll([
      node,
      desc,
      attackingFaction,
      defendingFaction,
      eta,
      vsInfestation,
      completed,
      completion,
      count,
      attackerReward,
      defenderReward,
    ]);

  @override
  Invasion copyWith({
    String id,
    DateTime activation,
    DateTime expiry,
    String node,
    String desc,
    String attackingFaction,
    String defendingFaction,
    String eta,
    bool vsInfestation,
    bool completed,
    num completion,
    num count,
    Reward attackerReward,
    Reward defenderReward,
  }) {
    return Invasion(
      id: id ?? this.id,
      activation: activation ?? this.activation,
      expiry: expiry ?? this.expiry,
      node: node ?? this.node,
      desc: desc ?? this.desc,
      attackingFaction: attackingFaction ?? this.attackingFaction,
      defendingFaction: defendingFaction ?? this.defendingFaction,
      eta: eta ?? this.eta,
      vsInfestation: vsInfestation ?? this.vsInfestation,
      completed: completed ?? this.completed,
      completion: completion ?? this.completion,
      count: count ?? this.count,
      attackerReward: attackerReward ?? attackerReward,
      defenderReward: defenderReward ?? defenderReward,
    );
  }
}
