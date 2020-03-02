// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'syndicate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Syndicate _$SyndicateFromJson(Map<String, dynamic> json) {
  return Syndicate(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    name: json['syndicate'] as String,
    active: json['active'] as bool,
    jobs: (json['jobs'] as List)
        ?.map((e) => e == null ? null : Job.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SyndicateToJson(Syndicate instance) => <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'syndicate': instance.name,
      'active': instance.active,
      'jobs': instance.jobs?.map((e) => e?.toJson())?.toList(),
    };
