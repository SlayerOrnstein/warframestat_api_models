// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riven_data.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension $RivenDataCopyWith on RivenData {
  RivenData copyWith({
    RivenRoll rerolled,
    RivenRoll unrolled,
  }) {
    return RivenData(
      rerolled: rerolled ?? this.rerolled,
      unrolled: unrolled ?? this.unrolled,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RivenData _$RivenDataFromJson(Map<String, dynamic> json) {
  return RivenData(
    rerolled: json['rerolled'] == null
        ? null
        : RivenRoll.fromJson(json['rerolled'] as Map<String, dynamic>),
    unrolled: json['unrolled'] == null
        ? null
        : RivenRoll.fromJson(json['unrolled'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RivenDataToJson(RivenData instance) => <String, dynamic>{
      'rerolled': instance.rerolled,
      'unrolled': instance.unrolled,
    };
