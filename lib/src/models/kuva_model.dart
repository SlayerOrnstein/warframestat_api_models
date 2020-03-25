import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_api_model/src/entities/kuva.dart';

part 'kuva_model.g.dart';

@JsonSerializable()
class KuvaModel extends Kuva {
  const KuvaModel({
    DateTime activation,
    DateTime expiry,
    String node,
    String enemy,
    String type,
    bool archwing,
    bool sharkwing,
  }) : super(
          activation: activation,
          expiry: expiry,
          node: node,
          enemy: enemy,
          type: type,
          archwingRequired: archwing || sharkwing || false,
        );

  factory KuvaModel.fromJson(Map<String, dynamic> json) {
    return _$KuvaModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$KuvaModelToJson(this);
}
