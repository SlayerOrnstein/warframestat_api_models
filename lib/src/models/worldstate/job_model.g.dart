// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobModel _$JobModelFromJson(Map json) {
  return $checkedNew('JobModel', json, () {
    final val = JobModel(
      type: $checkedConvert(json, 'type', (v) => v as String),
      rewardpool: $checkedConvert(json, 'rewardPool', (v) => v),
      enemyLevels: $checkedConvert(json, 'enemyLevels',
          (v) => (v as List)?.map((e) => e as int)?.toList()),
      standingStages: $checkedConvert(json, 'standingStages',
          (v) => (v as List)?.map((e) => e as int)?.toList()),
    );
    return val;
  }, fieldKeyMap: const {'rewardpool': 'rewardPool'});
}

Map<String, dynamic> _$JobModelToJson(JobModel instance) => <String, dynamic>{
      'type': instance.type,
      'enemyLevels': instance.enemyLevels,
      'standingStages': instance.standingStages,
      'rewardPool': instance.rewardpool,
    };
