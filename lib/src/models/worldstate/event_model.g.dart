// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map json) {
  return $checkedNew('EventModel', json, () {
    final val = EventModel(
      id: $checkedConvert(json, 'id', (v) => v as String),
      activation: $checkedConvert(json, 'activation',
          (v) => v == null ? null : DateTime.parse(v as String)),
      expiry: $checkedConvert(json, 'expiry',
          (v) => v == null ? null : DateTime.parse(v as String)),
      faction: $checkedConvert(json, 'faction', (v) => v as String),
      affiliatedWith:
          $checkedConvert(json, 'affiliatedWith', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      victimNode: $checkedConvert(json, 'victimNode', (v) => v as String),
      node: $checkedConvert(json, 'node', (v) => v as String),
      tooltip: $checkedConvert(json, 'tooltip', (v) => v as String),
      maximumScore: $checkedConvert(json, 'maximumScore', (v) => v as num),
      currentScore: $checkedConvert(json, 'currentScore', (v) => v as num),
      health: $checkedConvert(json, 'health', (v) => v as num),
      rewards: $checkedConvert(
          json,
          'rewards',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : RewardModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
      interimSteps: $checkedConvert(
          json,
          'interimSteps',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : InterimStepModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
      jobs: $checkedConvert(
          json,
          'jobs',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : JobModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$EventModelToJson(EventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'faction': instance.faction,
      'description': instance.description,
      'victimNode': instance.victimNode,
      'node': instance.node,
      'tooltip': instance.tooltip,
      'affiliatedWith': instance.affiliatedWith,
      'health': instance.health,
      'currentScore': instance.currentScore,
      'maximumScore': instance.maximumScore,
      'rewards': instance.rewards?.map((e) => e?.toJson())?.toList(),
      'interimSteps': instance.interimSteps?.map((e) => e?.toJson())?.toList(),
      'jobs': instance.jobs?.map((e) => e?.toJson())?.toList(),
    };

InterimStepModel _$InterimStepModelFromJson(Map json) {
  return $checkedNew('InterimStepModel', json, () {
    final val = InterimStepModel(
      goal: $checkedConvert(json, 'goal', (v) => v as int),
      reward: $checkedConvert(
          json,
          'reward',
          (v) => v == null
              ? null
              : RewardModel.fromJson((v as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                ))),
    );
    return val;
  });
}

Map<String, dynamic> _$InterimStepModelToJson(InterimStepModel instance) =>
    <String, dynamic>{
      'goal': instance.goal,
      'reward': instance.reward?.toJson(),
    };
