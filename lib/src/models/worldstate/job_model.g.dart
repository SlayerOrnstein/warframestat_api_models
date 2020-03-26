// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobModel _$JobModelFromJson(Map<String, dynamic> json) {
  return JobModel(
    type: json['type'] as String,
    rewardPool: (json['rewardPool'] as List)?.map((e) => e as String)?.toList(),
    enemyLevels: (json['enemyLevels'] as List)?.map((e) => e as int)?.toList(),
    standingStages:
        (json['standingStages'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$JobModelToJson(JobModel instance) => <String, dynamic>{
      'type': instance.type,
      'rewardPool': instance.rewardPool,
      'enemyLevels': instance.enemyLevels,
      'standingStages': instance.standingStages,
    };
