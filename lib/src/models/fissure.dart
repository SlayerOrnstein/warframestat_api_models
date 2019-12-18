import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_model/src/objects/worldstate_object.dart';

part 'fissure.g.dart';

@JsonSerializable()
class VoidFissure extends WorldstateObject {
  const VoidFissure({
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
  }) : super(id: id, activation: activation, expiry: expiry);

  factory VoidFissure.fromJson(Map<String, dynamic> json) =>
      _$VoidFissureFromJson(json);

  final String node, missionType, enemy, tier;
  final int tierNum;
  final bool active, expired;

  Map<String, dynamic> toJson() => _$VoidFissureToJson(this);

  @override
  List<Object> get props => super.props
    ..addAll([node, missionType, enemy, tier, tierNum, active, expired]);

  @override
  VoidFissure copyWith({
    String id,
    DateTime activation,
    DateTime expiry,
    String node,
    String missionType,
    String enemy,
    String tier,
    int tierNum,
    bool active,
    bool expired,
  }) {
    return VoidFissure(
      id: id ?? this.id,
      activation: activation ?? this.activation,
      expiry: expiry ?? this.expiry,
      node: node ?? this.node,
      missionType: missionType ?? this.missionType,
      enemy: enemy ?? this.enemy,
      tier: tier ?? this.tier,
      tierNum: tierNum ?? this.tierNum,
      active: active ?? this.active,
      expired: expired ?? this.expired,
    );
  }
}
