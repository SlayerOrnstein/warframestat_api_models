// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentient_outpost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SentientOutpost _$SentientOutpostFromJson(Map<String, dynamic> json) {
  return SentientOutpost(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    mission: json['mission'] == null
        ? null
        : Mission.fromJson(json['mission'] as Map<String, dynamic>),
    active: json['active'] as bool,
  );
}

Map<String, dynamic> _$SentientOutpostToJson(SentientOutpost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'mission': instance.mission,
      'active': instance.active,
    };