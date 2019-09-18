// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reward _$RewardFromJson(Map<String, dynamic> json) {
  return Reward(
    itemString: json['itemString'] as String,
    thumbnail: json['thumbnail'] as String,
    asString: json['asString'] as String,
    credits: json['credits'] as int,
  );
}

Map<String, dynamic> _$RewardToJson(Reward instance) => <String, dynamic>{
      'itemString': instance.itemString,
      'thumbnail': instance.thumbnail,
      'asString': instance.asString,
      'credits': instance.credits,
    };
