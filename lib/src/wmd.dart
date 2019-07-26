import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_model/worldstate_model.dart';

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
    List<Reward> rewards,
    this.health,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          faction: faction,
          description: description,
          node: node,
          victimNode: victimNode,
          tooltip: tooltip,
          rewards: rewards,
        );

  factory Wmd.fromJson(Map<String, dynamic> json) => _$WmdFromJson(json);

  final String health;

  @override
  double get eventHealth => double.parse(health);

  Map<String, dynamic> toJson() => _$WmdToJson(this);
}
