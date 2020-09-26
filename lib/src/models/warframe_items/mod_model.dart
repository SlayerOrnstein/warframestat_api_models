import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_api_models/src/entities/warframe_items/mods.dart';

import 'patch_log_model.dart';

part 'mod_model.g.dart';

@JsonSerializable()
class ModModel extends Mod {
  const ModModel({
    String uniqueName,
    String name,
    String polarity,
    String rarity,
    int baseDrain,
    int fusionLimit,
    String compatName,
    String type,
    this.levelStats,
    String category,
    bool isAugment,
    bool isTradable,
    this.patchlogs,
    String wikiaThumbnail,
    String wikiaUrl,
    bool transmutable,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          polarity: polarity,
          rarity: rarity,
          baseDrain: baseDrain,
          fusionLimit: fusionLimit,
          compatName: compatName,
          type: type,
          levelStats: levelStats,
          category: category,
          isAugment: isAugment,
          isTradable: isTradable,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
          transmutable: transmutable,
        );

  factory ModModel.fromJson(Map<String, dynamic> json) {
    return _$ModModelFromJson(json);
  }

  @override
  final List<LevelStatsModel> levelStats;

  @override
  final List<PatchlogModel> patchlogs;

  Map<String, dynamic> toJson() => _$ModModelToJson(this);
}

@JsonSerializable()
class LevelStatsModel extends LevelStats {
  const LevelStatsModel({List<Map<String, List<String>>> stats})
      : super(stats: stats);

  factory LevelStatsModel.fromJson(Map<String, dynamic> json) {
    return _$LevelStatsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LevelStatsModelToJson(this);
}
