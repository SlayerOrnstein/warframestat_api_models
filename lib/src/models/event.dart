import 'package:json_annotation/json_annotation.dart';

import '../objects/worldstateObject.dart';
import 'reward.dart';
import 'syndicate.dart';

part 'event.g.dart';

@JsonSerializable()
class Event extends WorldstateObject {
  Event({
    String id,
    DateTime activation,
    DateTime expiry,
    this.faction,
    this.description,
    this.affiliatedWith,
    this.victimNode,
    this.health,
    this.node,
    this.tooltip,
    this.currentScore,
    this.maximumScore,
    this.rewards,
    this.jobs,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          props: [
            faction,
            description,
            affiliatedWith,
            victimNode,
            health,
            node,
            tooltip,
            currentScore,
            maximumScore,
            rewards,
            jobs
          ],
        );

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  final String faction,
      description,
      affiliatedWith,
      victimNode,
      health,
      node,
      tooltip;
  final num currentScore, maximumScore;
  final List<Reward> rewards;
  final List<Jobs> jobs;

  Map<String, dynamic> toJson() => _$EventToJson(this);
}
