import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_api_model/src/objects/worldstate_object.dart';

part 'kuva.g.dart';

@JsonSerializable()
class Kuva extends WorldstateObject {
  const Kuva({
    DateTime activation,
    DateTime expiry,
    this.node,
    this.enemy,
    this.type,
    this.archwing,
    this.sharkwing,
  }) : super(activation: activation, expiry: expiry);

  factory Kuva.fromJson(Map<String, dynamic> json) => _$KuvaFromJson(json);

  final String node;
  final String enemy;
  final String type;
  final bool archwing;
  final bool sharkwing;

  bool get archwingRequired => archwing || sharkwing;

  Map<String, dynamic> toJson() => _$KuvaToJson(this);
}
