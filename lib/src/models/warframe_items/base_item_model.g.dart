// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseItemModel _$BaseItemModelFromJson(Map json) {
  return $checkedNew('BaseItemModel', json, () {
    final val = BaseItemModel(
      uniqueName: $checkedConvert(json, 'uniqueName', (v) => v as String),
      name: $checkedConvert(json, 'name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      type: $checkedConvert(json, 'type', (v) => v as String),
      imageName: $checkedConvert(json, 'imageName', (v) => v as String),
      category: $checkedConvert(json, 'category', (v) => v as String),
      productCategory:
          $checkedConvert(json, 'productCategory', (v) => v as String),
      isTradable: $checkedConvert(json, 'isTradable', (v) => v as bool),
      patchlogs: $checkedConvert(
          json,
          'patchlogs',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : PatchlogModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
      wikiaUrl: $checkedConvert(json, 'wikiaUrl', (v) => v as String),
      wikiaThumbnail:
          $checkedConvert(json, 'wikiaThumbnail', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$BaseItemModelToJson(BaseItemModel instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'imageName': instance.imageName,
      'category': instance.category,
      'productCategory': instance.productCategory,
      'isTradable': instance.isTradable,
      'wikiaUrl': instance.wikiaUrl,
      'wikiaThumbnail': instance.wikiaThumbnail,
      'patchlogs': instance.patchlogs?.map((e) => e?.toJson())?.toList(),
    };
