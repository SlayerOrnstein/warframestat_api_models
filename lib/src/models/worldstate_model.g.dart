// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worldstate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorldstateModel _$WorldstateModelFromJson(Map<String, dynamic> json) {
  return WorldstateModel(
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
  );
}

Map<String, dynamic> _$WorldstateModelToJson(WorldstateModel instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp?.toIso8601String(),
    };
