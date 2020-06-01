// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseItemModel _$BaseItemModelFromJson(Map<String, dynamic> json) {
  return BaseItemModel(
    uniqueName: json['uniqueName'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    type: json['type'] as String,
    imageName: json['imageName'] as String,
    category: json['category'] as String,
    tradable: json['tradable'] as bool,
    patchlogs: (json['patchlogs'] as List)
        ?.map((e) => e == null
            ? null
            : PatchlogModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    wikiaUrl: json['wikiaUrl'] as String,
    wikiaThumbnail: json['wikiaThumbnail'] as String,
  );
}

Map<String, dynamic> _$BaseItemModelToJson(BaseItemModel instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'imageName': instance.imageName,
      'category': instance.category,
      'tradable': instance.tradable,
      'wikiaUrl': instance.wikiaUrl,
      'wikiaThumbnail': instance.wikiaThumbnail,
      'patchlogs': instance.patchlogs?.map((e) => e?.toJson())?.toList(),
    };
