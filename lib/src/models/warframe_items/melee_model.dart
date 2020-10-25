import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_api_models/models.dart';

import '../../entities/warframe_items/melee.dart';
import 'component_model.dart';

part 'melee_model.g.dart';

@JsonSerializable()
class MeleeModel extends Melee {
  const MeleeModel({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    String productCategory,
    List<double> damagePerShot,
    int totalDamage,
    double criticalChance,
    int criticalMultiplier,
    double procChance,
    double fireRate,
    int masteryReq,
    int slot,
    double omegaAttenuation,
    int blockingAngle,
    int comboDuration,
    double followThrough,
    double range,
    int slamAttack,
    int slamRadialDamage,
    int slamRadius,
    int slideAttack,
    int heavyAttackDamage,
    int heavySlamAttack,
    int heavySlamRadialDamage,
    int heavySlamRadius,
    double windUp,
    int buildPrice,
    int buildTime,
    int skipBuildTimePrice,
    int buildQuantity,
    bool consumeOnBuild,
    this.components,
    bool tradable,
    double channeling,
    String damage,
    Map<String, double> damageTypes,
    int marketCost,
    List<String> polarities,
    String stancePolarity,
    List<String> tags,
    int disposition,
    this.patchlogs,
    String wikiaThumbnail,
    String wikiaUrl,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          type: type,
          imageName: imageName,
          category: category,
          productCategory: productCategory,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
          damagePerShot: damagePerShot,
          totalDamage: totalDamage,
          criticalChance: criticalChance,
          criticalMultiplier: criticalMultiplier,
          procChance: procChance,
          attackSpeed: fireRate,
          masteryReq: masteryReq,
          slot: slot,
          omegaAttenuation: omegaAttenuation,
          blockingAngle: blockingAngle,
          comboDuration: comboDuration,
          followThrough: followThrough,
          range: range,
          slamAttack: slamAttack,
          slamRadialDamage: slamRadialDamage,
          slamRadius: slamRadius,
          slideAttack: slideAttack,
          heavyAttackDamage: heavyAttackDamage,
          heavySlamAttack: heavySlamAttack,
          heavySlamRadialDamage: heavySlamRadialDamage,
          heavySlamRadius: heavySlamRadius,
          windUp: windUp,
          buildPrice: buildPrice,
          buildTime: buildTime,
          skipBuildTimePrice: skipBuildTimePrice,
          buildQuantity: buildQuantity,
          consumeOnBuild: consumeOnBuild,
          tradable: tradable,
          channeling: channeling,
          damage: damage,
          damageTypes: damageTypes,
          marketCost: marketCost,
          polarities: polarities,
          stancePolarity: stancePolarity,
          tags: tags,
          disposition: disposition,
        );

  factory MeleeModel.fromjson(Map<String, dynamic> json) {
    return _$MeleeModelFromJson(json);
  }

  @override
  final List<ComponentModel> components;

  @override
  final List<PatchlogModel> patchlogs;

  Map<String, dynamic> toJson() => _$MeleeModelToJson(this);
}
