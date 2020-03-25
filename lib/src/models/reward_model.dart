import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_api_model/src/entities/reward.dart';

part 'reward_model.g.dart';

@JsonSerializable()
class RewardModel extends Reward {
  const RewardModel({
    String itemString,
    String thumbnail,
    String asString,
    int credits,
    @JsonKey(name: 'countedItems') List<CountedItemModel> countedItemModels,
  }) : super(
          itemString: itemString,
          thumbnail: thumbnail,
          asString: asString,
          credits: credits,
          countedItems: countedItemModels,
        );

  factory RewardModel.fromJson(Map<String, dynamic> json) {
    return _$RewardModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RewardModelToJson(this);
}

@JsonSerializable()
class CountedItemModel extends CountedItem {
  const CountedItemModel({int count, String type})
      : super(count: count, type: type);

  factory CountedItemModel.fromJson(Map<String, dynamic> json) {
    return _$CountedItemModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CountedItemModelToJson(this);
}
