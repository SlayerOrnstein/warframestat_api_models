import 'package:json_annotation/json_annotation.dart';

import '../objects/eventObject.dart';
import 'reward.dart';

part 'generic_event.g.dart';

@JsonSerializable()
class GenericEvent extends EventObject {
  GenericEvent({
    String id,
    DateTime activation,
    DateTime expiry,
    String faction,
    String description,
    String victimNode,
    String node,
    String tooltip,
    String health,
    this.maximumScore,
    this.currentScore,
    this.rewards,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          faction: faction,
          description: description,
          node: node,
          victimNode: victimNode,
          health: double.parse(
            health ?? (100 - (currentScore / maximumScore) * 100).toString(),
          ),
          tooltip: tooltip,
        );

  final num currentScore, maximumScore;

  factory GenericEvent.fromJson(Map<String, dynamic> json) =>
      _$GenericEventFromJson(json);

  final List<Reward> rewards;

  @override
  List<Reward> get eventRewards => rewards;

  Map<String, dynamic> get toJson => _$GenericEventToJson(this);
}
