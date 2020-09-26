// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComponentModel _$ComponentModelFromJson(Map json) {
  return ComponentModel(
    uniqueName: json['uniqueName'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    itemCount: json['itemCount'] as num,
    imageName: json['imageName'] as String,
    isTradable: json['isTradable'] as bool,
    drops: (json['drops'] as List)
        ?.map((e) => e == null
            ? null
            : ComponentDropModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
  );
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
