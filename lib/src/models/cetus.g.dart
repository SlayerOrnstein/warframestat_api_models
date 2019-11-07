// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cetus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cetus _$CetusFromJson(Map<String, dynamic> json) {
  return Cetus(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    state: json['state'] as String,
    isDay: json['isDay'] as bool,
    isCetus: json['isCetus'] as bool ?? true,
  );
}

Map<String, dynamic> _$CetusToJson(Cetus instance) => <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'state': instance.state,
      'isDay': instance.isDay,
      'isCetus': instance.isCetus,
      'expiry': instance.expiry?.toIso8601String(),
    };
