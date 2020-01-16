// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'synth_location.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension $SynthLocationCopyWith on SynthLocation {
  SynthLocation copyWith({
    String lastVerified,
    String spawnRate,
    String level,
    String faction,
    String mission,
    String planet,
    String type,
  }) {
    return SynthLocation(
      lastVerified: lastVerified ?? this.lastVerified,
      spawnRate: spawnRate ?? this.spawnRate,
      level: level ?? this.level,
      faction: faction ?? this.faction,
      mission: mission ?? this.mission,
      planet: planet ?? this.planet,
      type: type ?? this.type,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SynthLocation _$SynthLocationFromJson(Map<String, dynamic> json) {
  return SynthLocation(
    lastVerified: json['last_verified'] as String,
    level: json['level'] as String,
    faction: json['faction'] as String,
    spawnRate: json['spawn_rate'] as String,
    mission: json['mission'] as String,
    planet: json['planet'] as String,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$SynthLocationToJson(SynthLocation instance) =>
    <String, dynamic>{
      'last_verified': instance.lastVerified,
      'spawn_rate': instance.spawnRate,
      'level': instance.level,
      'faction': instance.faction,
      'mission': instance.mission,
      'planet': instance.planet,
      'type': instance.type,
    };
