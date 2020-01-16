import 'package:copy_with_annotation/copy_with_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'riven_roll.dart';

part 'riven_mod.g.dart';

@CopyWith()
@JsonSerializable()
class RivenMod {
  RivenMod({this.rerolled, this.unrolled});

  factory RivenMod.fromJson(Map<String, dynamic> json) {
    return _$RivenModFromJson(json);
  }

  @JsonKey(nullable: true)
  final RivenRoll rerolled;

  final RivenRoll unrolled;

  Map<String, dynamic> toJson() => _$RivenModToJson(this);
}
