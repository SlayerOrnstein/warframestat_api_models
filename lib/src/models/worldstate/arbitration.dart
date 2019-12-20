import 'package:json_annotation/json_annotation.dart';

import '../../../worldstate_objects.dart';

part 'arbitration.g.dart';

@JsonSerializable()
class Arbitration extends WorldstateObject {
  const Arbitration({
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

  bool get archwingRequired => archwing || sharkwing || false;

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

  @override
  Arbitration copyWith({
    DateTime activation,
    DateTime expiry,
    String solnode,
    String node,
    String name,
    String title,
    String planet,
    String enemy,
    String type,
    String nodeType,
    bool archwing,
    bool sharkwing,
  }) {
    return Arbitration(
      activation: activation ?? activation,
      expiry: expiry ?? this.expiry,
      solnode: solnode ?? this.solnode,
      node: node ?? this.node,
      name: name ?? this.name,
      title: title ?? this.title,
      planet: planet ?? this.planet,
      enemy: enemy ?? this.enemy,
      type: type ?? this.type,
      nodeType: nodeType ?? this.nodeType,
      archwing: archwing ?? this.archwing,
      sharkwing: sharkwing ?? this.sharkwing,
    );
  }
}
