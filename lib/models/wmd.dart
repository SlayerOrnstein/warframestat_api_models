import 'package:json_annotation/json_annotation.dart';

import '../objects/eventObject.dart';
import 'reward.dart';

part 'wmd.g.dart';

@JsonSerializable()
class Wmd extends EventObject {
  Wmd({
    String id,
    DateTime activation,
    DateTime expiry,
    String faction,
    String description,
    String victimNode,
    String node,
    String tooltip,
    String health,
    this.rewards,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          faction: faction,
          description: description,
          node: node,
          victimNode: victimNode,
          health: double.parse(health),
          tooltip: tooltip,
        );

  factory Wmd.fromJson(Map<String, dynamic> json) => _$WmdFromJson(json);

  final List<Reward> rewards;

  @override
  List<Reward> get eventRewards => rewards;

  Map<String, dynamic> get toJson => _$WmdToJson(this);
}
