import 'package:json_annotation/json_annotation.dart';

import '../../../worldstate_objects.dart';
import 'job.dart';
import 'reward.dart';

part 'event.g.dart';

@JsonSerializable()
class Event extends WorldstateObject {
  const Event({
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
  }) : super(id: id, activation: activation, expiry: expiry);

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  final String faction, description, victimNode, node, tooltip, affiliatedWith;
  final num health, currentScore, maximumScore;
  final List<Reward> rewards;
  final List<InterimStep> interimSteps;
  final List<Job> jobs;

  double get eventHealth {
    return (health ??
            (100 - ((currentScore ?? 0.0) / (maximumScore ?? 0.0)) * 100))
        .toDouble();
  }

  List<Reward> get eventRewards {
    final _rewards = List<Reward>.from(rewards);

    return _rewards
      ..addAll(interimSteps?.map<Reward>((i) => i.reward) ?? [])
      ..removeWhere((r) => r.itemString.isEmpty);
  }

  Map<String, dynamic> toJson() => _$EventToJson(this);

  @override
  List<Object> get props {
    return super.props
      ..addAll([
        faction,
        affiliatedWith,
        description,
        victimNode,
        node,
        tooltip,
        health,
        currentScore,
        maximumScore,
        rewards,
        interimSteps,
        jobs
      ]);
  }
}

@JsonSerializable()
class InterimStep {
  InterimStep({this.goal, this.reward});

  factory InterimStep.fromJson(Map<String, dynamic> json) =>
      _$InterimStepFromJson(json);

  int goal;
  Reward reward;

  Map<String, dynamic> toJson() => _$InterimStepToJson(this);
}
