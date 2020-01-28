import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'riven_roll.g.dart';

@JsonSerializable()
class RivenRoll extends Equatable {
  const RivenRoll({
    this.itemType,
    this.compatibility,
    this.rerolled,
    this.avg,
    this.stddev,
    this.median,
    this.min,
    this.max,
    this.pop,
  });

  factory RivenRoll.fromJson(Map<String, dynamic> json) {
    return _$RivenRollFromJson(json);
  }

  final String itemType, compatibility;
  final bool rerolled;
  final double avg, stddev, median;
  final int min, max, pop;

  Map<String, dynamic> toJson() => _$RivenRollToJson(this);

  @override
  List<Object> get props {
    return [
      itemType,
      compatibility,
      rerolled,
      avg,
      stddev,
      median,
      min,
      max,
      pop
    ];
  }
}
