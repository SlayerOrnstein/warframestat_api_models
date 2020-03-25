import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_api_model/src/entities/sentient_outpost.dart';

import 'mission_model.dart';

part 'sentient_outpost_model.g.dart';

@JsonSerializable()
class SentientOutpostModel extends SentientOutpost {
  const SentientOutpostModel({
    String id,
    DateTime activation,
    DateTime expiry,
    @JsonKey(name: 'mission') MissionModel missionModel,
    bool active,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          mission: missionModel,
          active: active,
        );

  factory SentientOutpostModel.fromJson(Map<String, dynamic> json) {
    return _$SentientOutpostModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SentientOutpostModelToJson(this);
}
