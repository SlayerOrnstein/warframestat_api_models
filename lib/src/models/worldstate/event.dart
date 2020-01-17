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

  num get eventHealth {
    return health ?? (100 - (currentScore ?? 0 / maximumScore ?? 0) * 100);
  }

  List<String> get eventRewards {
    return [
      for (Reward r in rewards.where((r) => r.itemString.isNotEmpty == true))
        ...r.itemString.split(' + '),
    ]..sort();
  }

  Map<String, dynamic> toJson() => _$EventToJson(this);

  @override
  List<Object> get props => super.props
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

  @override
  Event copyWith({
    String id,
    DateTime activation,
    DateTime expiry,
    String faction,
    String affiliatedWith,
    String description,
    String victimNode,
    String node,
    String tooltip,
    num health,
    num currentScore,
    num maximumScore,
    List<Reward> rewards,
    List<InterimStep> interimSteps,
    List<Job> jobs,
  }) {
    return Event(
      id: id ?? this.id,
      activation: activation ?? this.activation,
      expiry: expiry ?? this.expiry,
      faction: faction ?? this.faction,
      description: description ?? this.description,
      victimNode: victimNode ?? this.victimNode,
      node: node ?? this.node,
      tooltip: tooltip ?? this.tooltip,
      health: health ?? this.health,
      currentScore: currentScore ?? this.currentScore,
      maximumScore: maximumScore ?? this.maximumScore,
      rewards: rewards ?? this.rewards,
      interimSteps: interimSteps ?? this.interimSteps,
      jobs: jobs ?? this.jobs,
    );
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

  InterimStep copyWith({int goal, Reward reward}) {
    return InterimStep(goal: goal ?? this.goal, reward: reward ?? this.reward);
  }
}
