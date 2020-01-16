// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riven_roll.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension $RivenRollCopyWith on RivenRoll {
  RivenRoll copyWith({
    String itemType,
    String compatibility,
    bool rerolled,
    double avg,
    double stddev,
    double median,
    int min,
    int max,
    int pop,
  }) {
    return RivenRoll(
      itemType: itemType ?? this.itemType,
      compatibility: compatibility ?? this.compatibility,
      rerolled: rerolled ?? this.rerolled,
      avg: avg ?? this.avg,
      stddev: stddev ?? this.stddev,
      median: median ?? this.median,
      min: min ?? this.min,
      max: max ?? this.max,
      pop: pop ?? this.pop,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RivenRoll _$RivenRollFromJson(Map<String, dynamic> json) {
  return RivenRoll(
    itemType: json['itemType'] as String,
    compatibility: json['compatibility'] as String,
    rerolled: json['rerolled'] as bool,
    avg: (json['avg'] as num)?.toDouble(),
    stddev: (json['stddev'] as num)?.toDouble(),
    median: (json['median'] as num)?.toDouble(),
    min: json['min'] as int,
    max: json['max'] as int,
    pop: json['pop'] as int,
  );
}

Map<String, dynamic> _$RivenRollToJson(RivenRoll instance) => <String, dynamic>{
      'itemType': instance.itemType,
      'compatibility': instance.compatibility,
      'rerolled': instance.rerolled,
      'avg': instance.avg,
      'stddev': instance.stddev,
      'median': instance.median,
      'min': instance.min,
      'max': instance.max,
      'pop': instance.pop,
    };
