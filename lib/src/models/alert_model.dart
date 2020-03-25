import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_api_model/src/entities/alert.dart';

import 'mission_model.dart';

part 'alert_model.g.dart';

@JsonSerializable()
class AlertModel extends Alert {
  const AlertModel({
    String id,
    DateTime activation,
    DateTime expiry,
    bool active,
    @JsonKey(name: 'mission') MissionModel missionModel,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          active: active,
          mission: missionModel,
        );

  factory AlertModel.fromJson(Map<String, dynamic> json) {
    return _$AlertModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AlertModelToJson(this);
}
