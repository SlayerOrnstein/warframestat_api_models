import 'package:json_annotation/json_annotation.dart';

import '../worldstate_models.dart';
import '../worldstate_objects.dart';

part 'event.g.dart';

@JsonSerializable()
class Event extends WorldstateObject {
  Event({
    String id,
    DateTime activation,
    DateTime expiry,
    this.faction,
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

  final String faction, description, victimNode, node, tooltip, health;
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
      for (Reward r
          in rewards..removeWhere((r) => r.itemString.isNotEmpty == false))
        ...r.itemString.split(' + '),
      for (_InterimStep i in interimSteps) ...i.reward.itemString.split(' + ')
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
