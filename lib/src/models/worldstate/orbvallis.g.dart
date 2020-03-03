// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orbvallis.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vallis _$VallisFromJson(Map<String, dynamic> json) {
  return Vallis(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    state: json['state'] as String,
    isWarm: json['isWarm'] as bool,
  );
}

Map<String, dynamic> _$VallisToJson(Vallis instance) => <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'state': instance.state,
      'isWarm': instance.isWarm,
    };
