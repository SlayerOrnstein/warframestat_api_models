// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reward _$RewardFromJson(Map json) {
  return Reward(
    itemString: json['itemString'] as String,
    thumbnail: json['thumbnail'] as String,
    asString: json['asString'] as String,
    credits: json['credits'] as int,
    countedItems: (json['countedItems'] as List)
        ?.map((e) => e == null
            ? null
            : CountedItem.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
  );
}

Map<String, dynamic> _$RewardToJson(Reward instance) => <String, dynamic>{
      'itemString': instance.itemString,
      'thumbnail': instance.thumbnail,
      'asString': instance.asString,
      'credits': instance.credits,
      'countedItems': instance.countedItems?.map((e) => e?.toJson())?.toList(),
    };

CountedItem _$CountedItemFromJson(Map json) {
  return CountedItem(
    count: json['count'] as num,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$CountedItemToJson(CountedItem instance) =>
    <String, dynamic>{
      'count': instance.count,
      'type': instance.type,
    };
