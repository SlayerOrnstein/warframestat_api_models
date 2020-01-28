import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'riven_roll.dart';

part 'riven_data.g.dart';

@JsonSerializable()
class RivenData extends Equatable {
  const RivenData({this.rerolled, this.unrolled});

  factory RivenData.fromJson(Map<String, dynamic> json) {
    return _$RivenDataFromJson(json);
  }

  @JsonKey(nullable: true)
  final RivenRoll rerolled;

  final RivenRoll unrolled;

  Map<String, dynamic> toJson() => _$RivenDataToJson(this);

  @override
  List<Object> get props => [unrolled, rerolled];
}
