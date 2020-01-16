import 'package:copy_with_annotation/copy_with_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'riven_roll.dart';

part 'riven_data.g.dart';

@CopyWith()
@JsonSerializable()
class RivenData {
  RivenData({this.rerolled, this.unrolled});

  factory RivenData.fromJson(Map<String, dynamic> json) {
    return _$RivenDataFromJson(json);
  }

  @JsonKey(nullable: true)
  final RivenRoll rerolled;

  final RivenRoll unrolled;

  Map<String, dynamic> toJson() => _$RivenDataToJson(this);
}
