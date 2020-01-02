import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_api_model/src/objects/worldstate_object.dart';

part 'sentient_outpost.g.dart';

@JsonSerializable()
class SentientOutpost extends WorldstateObject {
  const SentientOutpost({
    String id,
    DateTime activation,
    DateTime expiry,
    this.mission,
    this.active,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
        );

  factory SentientOutpost.fromJson(Map<String, dynamic> json) {
    return _$SentientOutpostFromJson(json);
  }

  final dynamic mission;
  final bool active;

  Map<String, dynamic> toJson() => _$SentientOutpostToJson(this);

  @override
  SentientOutpost copyWith({
    String id,
    DateTime activation,
    DateTime expiry,
    dynamic mission,
    bool active,
  }) {
    return SentientOutpost(
      id: id ?? this.id,
      activation: activation ?? this.activation,
      expiry: expiry ?? this.expiry,
      mission: mission ?? this.mission,
      active: active ?? this.active,
    );
  }
}

@JsonSerializable()
class Mission {
  const Mission({this.node, this.faction, this.type});

  factory Mission.fromJson(Map<String, dynamic> json) {
    return _$MissionFromJson(json);
  }

  final String node, faction, type;

  Map<String, dynamic> toJson() => _$MissionToJson(this);

  Mission copyWith({String node, String faction, String type}) {
    return Mission(
      node: node ?? this.node,
      faction: faction ?? this.faction,
      type: type ?? this.type,
    );
  }
}
