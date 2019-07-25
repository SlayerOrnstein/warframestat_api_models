import 'package:json_annotation/json_annotation.dart';

import 'worldstateObject.dart';

part 'fissure.g.dart';

@JsonSerializable()
class VoidFissure extends WorldstateObject {
  VoidFissure({
    String id,
    DateTime activation,
    DateTime expiry,
    this.node,
    this.missionType,
    this.enemy,
    this.tier,
    this.tierNum,
    this.active,
    this.expired,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          props: [node, missionType, enemy, tier, tierNum, active, expired],
        );

  factory VoidFissure.fromJson(Map<String, dynamic> json) =>
      _$VoidFissureFromJson(json);

  final String node, missionType, enemy, tier;
  final int tierNum;
  final bool active, expired;

  Map<String, dynamic> toJson() => _$VoidFissureToJson(this);
}
