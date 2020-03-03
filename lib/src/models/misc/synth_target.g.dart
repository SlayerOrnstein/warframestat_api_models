// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'synth_target.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SynthTarget _$SynthTargetFromJson(Map json) {
  return SynthTarget(
    name: json['name'] as String,
    locations: (json['locations'] as List)
        ?.map((e) => e == null
            ? null
            : SynthLocation.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
  );
}

Map<String, dynamic> _$SynthTargetToJson(SynthTarget instance) =>
    <String, dynamic>{
      'name': instance.name,
      'locations': instance.locations?.map((e) => e?.toJson())?.toList(),
    };
