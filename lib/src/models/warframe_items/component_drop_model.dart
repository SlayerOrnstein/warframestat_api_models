import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/component_drop.dart';

part 'component_drop_model.g.dart';

@JsonSerializable()
class ComponentDropModel extends ComponentDrop {
  const ComponentDropModel({
    String location,
    String type,
    String rarity,
    String rotation,
    String chance,
  }) : super(
          location: location,
          type: type,
          rarity: rarity,
          rotation: rotation,
          chance: chance,
        );

  factory ComponentDropModel.fromJson(Map<String, dynamic> json) {
    return _$ComponentDropModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ComponentDropModelToJson(this);
}
