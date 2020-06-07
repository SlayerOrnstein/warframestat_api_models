import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/weapon.dart';
import 'component_model.dart';

part 'weapon_model.g.dart';

@JsonSerializable()
class WeaponModel extends Weapon {
  const WeaponModel({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    String productCategory,
    bool tradable,
    String wikiaThumbnail,
    String wikiaUrl,
    num secondsPerShot,
    List<num> damagePerShot,
    num magazineSize,
    num reloadTime,
    num totalDamage,
    num damagePerSecond,
    String trigger,
    num accuracy,
    num criticalChance,
    num criticalMultiplier,
    num procChance,
    num fireRate,
    num chargeAttack,
    num spinAttack,
    num leapAttack,
    num wallAttack,
    num slot,
    String noise,
    bool sentinel,
    num masteryReq,
    num omegaAttenuation,
    num channelingDrain,
    num channelingDamagemultiplier,
    num buildPrice,
    num buildTime,
    num skipBuildTime,
    num buildQuantity,
    bool consumeOnBuild,
    this.components,
    dynamic damage,
    Map<String, dynamic> damageTypes,
    dynamic marketCost,
    List<String> polarites,
    List<String> tags,
    bool vaulted,
    num disposition,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          type: type,
          imageName: imageName,
          category: category,
          productCategory: productCategory,
          tradable: tradable,
          wikiaUrl: wikiaUrl,
          wikiaThumbnail: wikiaThumbnail,
          secondsPerShot: secondsPerShot,
          damagePerShot: damagePerShot,
          magazineSize: magazineSize,
          reloadTime: reloadTime,
          totalDamage: totalDamage,
          damagePerSecond: damagePerSecond,
          trigger: trigger,
          accuracy: accuracy,
          criticalChance: criticalChance,
          criticalMultiplier: criticalMultiplier,
          procChance: procChance,
          fireRate: fireRate,
          chargeAttack: chargeAttack,
          spinAttack: spinAttack,
          leapAttack: leapAttack,
          wallAttack: wallAttack,
          slot: slot,
          noise: noise,
          sentinel: sentinel,
          masteryReq: masteryReq,
          omegaAttenuation: omegaAttenuation,
          channelingDrain: channelingDrain,
          channelingDamagemultiplier: channelingDamagemultiplier,
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
        );

  factory WeaponModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponModelFromJson(json);

  @override
  final List<ComponentModel> components;

  Map<String, dynamic> toJson() => _$WeaponModelToJson(this);
}
