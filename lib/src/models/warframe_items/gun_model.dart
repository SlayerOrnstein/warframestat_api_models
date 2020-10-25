import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_api_models/models.dart';

import '../../entities/warframe_items/gun.dart';
import 'component_model.dart';

part 'gun_model.g.dart';

@JsonSerializable()
class GunModel extends Gun {
  const GunModel({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    String productCategory,
    bool isTradable,
    String wikiaThumbnail,
    String wikiaUrl,
    List<double> damagePerShot,
    int magazineSize,
    double reloadTime,
    int totalDamage,
    String trigger,
    double accuracy,
    double criticalChance,
    double criticalMultiplier,
    double procChance,
    double fireRate,
    int slot,
    String noise,
    bool sentinel,
    int masteryReq,
    double omegaAttenuation,
    int buildPrice,
    int buildTime,
    int skipBuildTime,
    int buildQuantity,
    bool consumeOnBuild,
    this.components,
    String damage,
    Map<String, double> damageTypes,
    int marketCost,
    List<String> polarites,
    List<String> tags,
    bool vaulted,
    int disposition,
    double multishot,
    this.patchlogs,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          type: type,
          imageName: imageName,
          category: category,
          productCategory: productCategory,
          isTradable: isTradable,
          wikiaUrl: wikiaUrl,
          wikiaThumbnail: wikiaThumbnail,
          damagePerShot: damagePerShot,
          magazineSize: magazineSize,
          reloadTime: reloadTime,
          totalDamage: totalDamage,
          trigger: trigger,
          accuracy: accuracy,
          criticalChance: criticalChance,
          criticalMultiplier: criticalMultiplier,
          procChance: procChance,
          fireRate: fireRate,
          slot: slot,
          noise: noise,
          sentinel: sentinel,
          masteryReq: masteryReq,
          omegaAttenuation: omegaAttenuation,
          buildPrice: buildPrice,
          buildTime: buildTime,
          skipBuildTime: skipBuildTime,
          buildQuantity: buildQuantity,
          consumeOnBuild: consumeOnBuild,
          damage: damage,
          damageTypes: damageTypes,
          marketCost: marketCost,
          polarites: polarites,
          tags: tags,
          vaulted: vaulted,
          disposition: disposition,
          multishot: multishot,
        );

  factory GunModel.fromJson(Map<String, dynamic> json) =>
      _$GunModelFromJson(json);

  @override
  final List<ComponentModel> components;

  @override
  final List<PatchlogModel> patchlogs;

  Map<String, dynamic> toJson() => _$GunModelToJson(this);
}
