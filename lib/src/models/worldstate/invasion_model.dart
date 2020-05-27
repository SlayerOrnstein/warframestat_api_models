import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_api_model/src/entities/worldstate/invasion.dart';

import 'reward_model.dart';

part 'invasion_model.g.dart';

@JsonSerializable()
class InvasionModel extends Invasion {
  const InvasionModel({
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
    double completion,
    int count,
    this.attackerRewardInfo,
    this.defenderRewardInfo,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          node: node,
          desc: desc,
          attackingFaction: attackingFaction,
          defendingFaction: defendingFaction,
          eta: eta,
          vsInfestation: vsInfestation,
          completed: completed,
          completion: completion,
          count: count,
        );

  factory InvasionModel.fromJson(Map<String, dynamic> json) {
    return _$InvasionModelFromJson(json);
  }

  @override
  @JsonKey(name: 'attackerReward')
  final RewardModel attackerRewardInfo;

  @override
  @JsonKey(name: 'defenderReward')
  final RewardModel defenderRewardInfo;

  Map<String, dynamic> toJson() => _$InvasionModelToJson(this);
}
