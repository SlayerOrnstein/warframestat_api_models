// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComponentModel _$ComponentModelFromJson(Map json) {
  return $checkedNew('ComponentModel', json, () {
    final val = ComponentModel(
      uniqueName: $checkedConvert(json, 'uniqueName', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      itemCount: $checkedConvert(json, 'itemCount', (v) => v as num),
      imageName: $checkedConvert(json, 'imageName', (v) => v as String),
      isTradable: $checkedConvert(json, 'isTradable', (v) => v as bool),
      drops: $checkedConvert(
          json,
          'drops',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : ComponentDropModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
    );
    return val;
  });
}

Map<String, dynamic> _$ComponentModelToJson(ComponentModel instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'imageName': instance.imageName,
      'isTradable': instance.isTradable,
      'itemCount': instance.itemCount,
      'drops': instance.drops?.map((e) => e?.toJson())?.toList(),
    };
