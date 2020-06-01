import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/ability.dart';

part 'ability_model.g.dart';

@JsonSerializable()
class AbilityModel extends Ability {
  const AbilityModel({String name, String description})
      : super(name: name, description: description);

  factory AbilityModel.fromJson(Map<String, dynamic> json) =>
      _$AbilityModelFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityModelToJson(this);
}
