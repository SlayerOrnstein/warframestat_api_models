// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cetus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cetus _$CetusFromJson(Map<String, dynamic> json) {
  return Cetus(
    id: json['id'] as String,
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    state: json['state'] as String,
    isDay: json['isDay'] as bool,
    isCetus: json['isCetus'] as bool,
  );
}

Map<String, dynamic> _$CetusToJson(Cetus instance) => <String, dynamic>{
      'id': instance.id,
      'state': instance.state,
      'isDay': instance.isDay,
      'isCetus': instance.isCetus,
      'expiry': instance.expiry?.toIso8601String(),
    };
