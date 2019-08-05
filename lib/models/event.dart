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
    this.health,
    this.rewards,
    this.interimSteps,
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
            interimSteps
          ],
        );

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  final String faction, description, victimNode, node, tooltip, health;
  final List<Reward> rewards;
  final List<_InterimStep> interimSteps;

  List<Reward> get eventRewards => <Reward>[];

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
