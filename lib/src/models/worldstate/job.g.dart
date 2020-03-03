// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Job _$JobFromJson(Map json) {
  return Job(
    type: json['type'] as String,
    pool: json['rewardPool'],
    enemyLevels: (json['enemyLevels'] as List)?.map((e) => e as int)?.toList(),
    standingStages:
        (json['standingStages'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$JobToJson(Job instance) => <String, dynamic>{
      'type': instance.type,
      'rewardPool': instance.pool,
      'enemyLevels': instance.enemyLevels,
      'standingStages': instance.standingStages,
    };
