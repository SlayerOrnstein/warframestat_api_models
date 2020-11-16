import 'package:json_annotation/json_annotation.dart';
import '../../entities/warframe_items/misc.dart';

import 'patch_log_model.dart';

part 'misc_models.g.dart';

@JsonSerializable()
class BasicItemModel extends BasicItem {
  const BasicItemModel({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    bool tradable,
    this.patchlogs,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          type: type,
          imageName: imageName,
          category: category,
          tradable: tradable,
          patchlogs: patchlogs,
        );

  factory BasicItemModel.fromJson(Map<String, dynamic> json) {
    return _$BasicItemModelFromJson(json);
  }

  @override
  final List<PatchlogModel> patchlogs;

  Map<String, dynamic> toJson() => _$BasicItemModelToJson(this);
}

@JsonSerializable()
class SolNodeModel extends SolNode {
  const SolNodeModel({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    bool tradable,
    int systemIndex,
    String systemName,
    int masterReq,
    int missionIndex,
    int factionIndex,
    int minEnemyLevel,
    int maxEnemyLevel,
    this.patchlogs,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          imageName: imageName,
          type: type,
          category: category,
          tradable: tradable,
          patchlogs: patchlogs,
          systemIndex: systemIndex,
          systemName: systemName,
          masterReq: masterReq,
          missionIndex: missionIndex,
          factionIndex: factionIndex,
          minEnemyLevel: minEnemyLevel,
          maxEnemyLevel: maxEnemyLevel,
        );

  factory SolNodeModel.fromJson(Map<String, dynamic> json) {
    return _$SolNodeModelFromJson(json);
  }

  @override
  final List<PatchlogModel> patchlogs;

  Map<String, dynamic> toJson() => _$SolNodeModelToJson(this);
}
