// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbilityModel _$AbilityModelFromJson(Map json) {
  return $checkedNew('AbilityModel', json, () {
    final val = AbilityModel(
      name: $checkedConvert(json, 'name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$AbilityModelToJson(AbilityModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };
