import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'reward.dart';
import '../objects/worldstateObject.dart';

part 'invasions.g.dart';

@JsonSerializable()
class Invasion extends WorldstateObject {
  Invasion({
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
    this.countedItems,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          props: [
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
            countedItems,
          ],
        );

  factory Invasion.fromJson(Map<String, dynamic> json) =>
      _$InvasionFromJson(json);

  final String node, desc, attackingFaction, defendingFaction, eta;
  final bool vsInfestation, completed;
  final num completion, count;
  final Reward attackerReward, defenderReward;
  final List<CountedItem> countedItems;

  Map<String, dynamic> toJson() => _$InvasionToJson(this);
}

@JsonSerializable()
class CountedItem extends Equatable {
  CountedItem({this.count, this.type}) : super([count, type]);

  factory CountedItem.fromJson(Map<String, dynamic> json) =>
      _$CountedItemFromJson(json);

  final num count;
  final String type;

  Map<String, dynamic> toJson() => _$CountedItemToJson(this);
}
