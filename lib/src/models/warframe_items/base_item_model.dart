import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/base_item.dart';
import 'patch_log_model.dart';

part 'base_item_model.g.dart';

@JsonSerializable()
class BaseItemModel extends BaseItem {
  const BaseItemModel({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    String productCategory,
    bool tradable = false,
    this.patchlogs,
    String wikiaUrl,
    String wikiaThumbnail,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          type: type,
          imageName: imageName,
          category: category,
          productCategory: productCategory,
          tradable: tradable,
          patchlogs: patchlogs,
          wikiaUrl: wikiaUrl,
          wikiaThumbnail: wikiaThumbnail,
        );

  factory BaseItemModel.fromJson(Map<String, dynamic> json) {
    return _$BaseItemModelFromJson(json);
  }

  @override
  final List<PatchlogModel> patchlogs;

  Map<String, dynamic> toJson() => _$BaseItemModelToJson(this);
}
