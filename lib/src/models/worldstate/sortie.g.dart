// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sortie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sortie _$SortieFromJson(Map<String, dynamic> json) {
  return Sortie(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    boss: json['boss'] as String,
    faction: json['faction'] as String,
    variants: (json['variants'] as List)
        ?.map((e) =>
            e == null ? null : Variant.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SortieToJson(Sortie instance) => <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'boss': instance.boss,
      'faction': instance.faction,
      'variants': instance.variants?.map((e) => e?.toJson())?.toList(),
    };

Variant _$VariantFromJson(Map<String, dynamic> json) {
  return Variant(
    missionType: json['missionType'] as String,
    modifier: json['modifier'] as String,
    modifierDescription: json['modifierDescription'] as String,
    node: json['node'] as String,
  );
}

Map<String, dynamic> _$VariantToJson(Variant instance) => <String, dynamic>{
      'missionType': instance.missionType,
      'modifier': instance.modifier,
      'modifierDescription': instance.modifierDescription,
      'node': instance.node,
    };
