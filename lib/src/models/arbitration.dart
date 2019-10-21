import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_model/src/objects/worldstateObject.dart';

part 'arbitration.g.dart';

@JsonSerializable()
class Arbitration extends WorldstateObject {
  Arbitration({
    DateTime activation,
    DateTime expiry,
    this.solnode,
    this.node,
    this.name,
    this.title,
    this.planet,
    this.enemy,
    this.type,
    this.nodeType,
    this.archwing,
    this.sharkwing,
  }) : super(activation: activation, expiry: expiry);

  factory Arbitration.fromJson(Map<String, dynamic> json) =>
      _$ArbitrationFromJson(json);

  final String solnode, node, name, title, planet, enemy, type;

  @JsonKey(name: 'node_type')
  final String nodeType;

  @JsonKey(defaultValue: false)
  final bool archwing, sharkwing;

  Map<String, dynamic> toJson() => _$ArbitrationToJson(this);

  @override
  List<Object> get props => super.props
    ..addAll([
      solnode,
      node,
      name,
      title,
      planet,
      enemy,
      type,
      nodeType,
      archwing,
      sharkwing
    ]);
}
