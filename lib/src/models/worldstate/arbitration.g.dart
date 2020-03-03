// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arbitration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Arbitration _$ArbitrationFromJson(Map json) {
  return Arbitration(
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    solnode: json['solnode'] as String,
    node: json['node'] as String,
    name: json['name'] as String,
    title: json['title'] as String,
    planet: json['planet'] as String,
    enemy: json['enemy'] as String,
    type: json['type'] as String,
    nodeType: json['node_type'] as String,
    archwing: json['archwing'] as bool ?? false,
    sharkwing: json['sharkwing'] as bool ?? false,
  );
}

Map<String, dynamic> _$ArbitrationToJson(Arbitration instance) =>
    <String, dynamic>{
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'solnode': instance.solnode,
      'node': instance.node,
      'name': instance.name,
      'title': instance.title,
      'planet': instance.planet,
      'enemy': instance.enemy,
      'type': instance.type,
      'node_type': instance.nodeType,
      'archwing': instance.archwing,
      'sharkwing': instance.sharkwing,
    };
