// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RewardModel _$RewardModelFromJson(Map<String, dynamic> json) {
  return RewardModel(
    itemString: json['itemString'] as String,
    thumbnail: json['thumbnail'] as String,
    asString: json['asString'] as String,
    credits: json['credits'] as int,
  );
}

Map<String, dynamic> _$RewardModelToJson(RewardModel instance) =>
    <String, dynamic>{
      'itemString': instance.itemString,
      'thumbnail': instance.thumbnail,
      'asString': instance.asString,
      'credits': instance.credits,
    };

CountedItemModel _$CountedItemModelFromJson(Map<String, dynamic> json) {
  return CountedItemModel(
    count: json['count'] as int,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$CountedItemModelToJson(CountedItemModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'type': instance.type,
    };
