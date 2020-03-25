// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'syndicate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyndicateModel _$SyndicateModelFromJson(Map<String, dynamic> json) {
  return SyndicateModel(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    name: json['name'] as String,
    active: json['active'] as bool,
  );
}

Map<String, dynamic> _$SyndicateModelToJson(SyndicateModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'name': instance.name,
      'active': instance.active,
    };
