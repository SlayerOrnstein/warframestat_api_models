import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_api_model/src/entities/job.dart';

part 'job_model.g.dart';

@JsonSerializable()
class JobModel extends Job {
  const JobModel({
    String type,
    List<String> rewardPool,
    List<int> enemyLevels,
    List<int> standingStages,
  }) : super(
          type: type,
          rewardPool: rewardPool,
          enemyLevels: enemyLevels,
          standingStages: standingStages,
        );

  factory JobModel.fromJson(Map<String, dynamic> json) {
    return _$JobModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$JobModelToJson(this);
}
