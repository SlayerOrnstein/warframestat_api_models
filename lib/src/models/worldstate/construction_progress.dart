import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_api_model/src/objects/worldstate_object.dart';

part 'construction_progress.g.dart';

@JsonSerializable()
class ConstructionProgress extends WorldstateObject {
  const ConstructionProgress({
    String id,
    this.fomorianProgress,
    this.razorbackProgress,
    this.unknownProgress,
  }) : super(id: id);

  factory ConstructionProgress.fromJson(Map<String, dynamic> json) {
    return _$ConstructionProgressFromJson(json);
  }

  final String fomorianProgress, razorbackProgress, unknownProgress;

  Map<String, dynamic> toJson() => _$ConstructionProgressToJson(this);
}
