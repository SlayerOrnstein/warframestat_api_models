import 'package:equatable/equatable.dart';
import 'package:warframestat_api_models/entities.dart';

class Mod extends BaseItem {
  const Mod({
    String uniqueName,
    String name,
    this.polarity,
    this.rarity,
    this.baseDrain,
    this.fusionLimit,
    this.compatName,
    String type,
    this.levelStats,
    String category,
    this.isAugment,
    bool isTradable,
    List<Patchlog> patchlogs,
    String wikiaThumbnail,
    String wikiaUrl,
    this.transmutable,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          type: type,
          category: category,
          isTradable: isTradable,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
        );

  final String polarity, rarity, compatName;
  final int baseDrain, fusionLimit;
  final List<LevelStats> levelStats;
  final bool isAugment, transmutable;

  @override
  List<Object> get props {
    return super.props
      ..addAll([
        polarity,
        rarity,
        compatName,
        baseDrain,
        fusionLimit,
        levelStats,
        isAugment,
        transmutable
      ]);
  }
}

class LevelStats extends Equatable {
  const LevelStats({this.stats});

  final List<Map<String, List<String>>> stats;

  @override
  List<Object> get props => [stats];
}
