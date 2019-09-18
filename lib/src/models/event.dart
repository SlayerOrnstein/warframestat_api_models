import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_model/src/models/reward.dart';
import 'package:worldstate_model/src/models/syndicate.dart';
import 'package:worldstate_model/src/objects/worldstateObject.dart';

part 'event.g.dart';

@JsonSerializable()
class Event extends WorldstateObject {
  Event({
    String id,
    DateTime activation,
    DateTime expiry,
    this.faction,
    this.affiliatedWith,
    this.description,
    this.victimNode,
    this.node,
    this.tooltip,
    this.maximumScore,
    this.currentScore,
    this.health,
    this.rewards,
    this.interimSteps,
    this.jobs,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          props: [
            faction,
            affiliatedWith,
            description,
            victimNode,
            node,
            tooltip,
            health,
            rewards,
            interimSteps,
            jobs
          ],
        );

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  final String faction,
      description,
      victimNode,
      node,
      tooltip,
      health,
      affiliatedWith;
  final num currentScore, maximumScore;
  final List<Reward> rewards;
  final List<_InterimStep> interimSteps;
  final List<Job> jobs;

  double get eventHealth {
    try {
      return double.parse(
          health ?? (100 - (currentScore / maximumScore) * 100).toString());
    } catch (e) {
      return null;
    }
  }

  List<String> get eventRewards {
    return [
      for (Reward r in rewards.where((r) => r.itemString.isNotEmpty == true))
        ...r.itemString.split(' + '),
    ]..sort();
  }

  Map<String, dynamic> toJson() => _$EventToJson(this);
}

@JsonSerializable()
class _InterimStep {
  _InterimStep({this.goal, this.reward});

  factory _InterimStep.fromJson(Map<String, dynamic> json) =>
      _$_InterimStepFromJson(json);

  int goal;
  Reward reward;

  Map<String, dynamic> toJson() => _$_InterimStepToJson(this);
}