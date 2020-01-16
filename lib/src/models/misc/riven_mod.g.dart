// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riven_mod.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension $RivenModCopyWith on RivenMod {
  RivenMod copyWith({
    RivenRoll rerolled,
    RivenRoll unrolled,
  }) {
    return RivenMod(
      rerolled: rerolled ?? this.rerolled,
      unrolled: unrolled ?? this.unrolled,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RivenMod _$RivenModFromJson(Map<String, dynamic> json) {
  return RivenMod(
    rerolled: json['rerolled'] == null
        ? null
        : RivenRoll.fromJson(json['rerolled'] as Map<String, dynamic>),
    unrolled: json['unrolled'] == null
        ? null
        : RivenRoll.fromJson(json['unrolled'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RivenModToJson(RivenMod instance) => <String, dynamic>{
      'rerolled': instance.rerolled,
      'unrolled': instance.unrolled,
    };
