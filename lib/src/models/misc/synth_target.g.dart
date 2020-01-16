// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'synth_target.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension $SynthTargetCopyWith on SynthTarget {
  SynthTarget copyWith({
    String name,
    List<SynthLocation> locations,
  }) {
    return SynthTarget(
      name: name ?? this.name,
      locations: locations ?? this.locations,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SynthTarget _$SynthTargetFromJson(Map<String, dynamic> json) {
  return SynthTarget(
    name: json['name'] as String,
    locations: (json['locations'] as List)
        ?.map((e) => e == null
            ? null
            : SynthLocation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SynthTargetToJson(SynthTarget instance) =>
    <String, dynamic>{
      'name': instance.name,
      'locations': instance.locations,
    };
