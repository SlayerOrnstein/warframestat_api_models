// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kuva.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Kuva _$KuvaFromJson(Map<String, dynamic> json) {
  return Kuva(
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    node: json['node'] as String,
    enemy: json['enemy'] as String,
    type: json['type'] as String,
    archwing: json['archwing'] as bool,
    sharkwing: json['sharkwing'] as bool,
  );
}

Map<String, dynamic> _$KuvaToJson(Kuva instance) => <String, dynamic>{
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'node': instance.node,
      'enemy': instance.enemy,
      'type': instance.type,
      'archwing': instance.archwing,
      'sharkwing': instance.sharkwing,
    };