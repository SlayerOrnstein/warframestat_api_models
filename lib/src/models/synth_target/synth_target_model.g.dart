// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'synth_target_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SynthTargetModel _$SynthTargetModelFromJson(Map json) {
  return SynthTargetModel(
    name: json['name'] as String,
    locationModels: (json['locations'] as List)
        ?.map((e) => e == null
            ? null
            : SynthLocationModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
  );
}

Map<String, dynamic> _$SynthTargetModelToJson(SynthTargetModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'locations': instance.locationModels?.map((e) => e?.toJson())?.toList(),
    };
