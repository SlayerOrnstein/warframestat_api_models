import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reward.g.dart';

@JsonSerializable()
class Reward extends Equatable {
  Reward({
    this.itemString,
    this.thumbnail,
    this.asString,
    this.credits,
    this.countedItems,
  }) : super([
          itemString,
          thumbnail,
          asString,
          credits,
          countedItems,
        ]);

  factory Reward.fromJson(Map<String, dynamic> json) => _$RewardFromJson(json);

  final String itemString, thumbnail, asString;
  final int credits;
  final List<CountedItem> countedItems;

  Map<String, dynamic> toJson() => _$RewardToJson(this);
}

@JsonSerializable()
class CountedItem extends Equatable {
  CountedItem({this.count, this.type}) : super([count, type]);

  factory CountedItem.fromJson(Map<String, dynamic> json) =>
      _$CountedItemFromJson(json);

  final num count;
  final String type;

  Map<String, dynamic> toJson() => _$CountedItemToJson(this);
}
