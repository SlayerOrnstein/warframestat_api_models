import 'base_item.dart';
import 'component.dart';
import 'patch_log.dart';

class Melee extends BaseItem {
  const Melee({
    String name,
    String uniqueName,
    this.damagePerShot,
    this.totalDamage,
    String description,
    this.criticalChance,
    this.criticalMultiplier,
    this.procChance,
    this.attackSpeed,
    this.masteryReq,
    String productCategory,
    this.slot,
    this.omegaAttenuation,
    this.blockingAngle,
    this.comboDuration,
    this.followThrough,
    this.range,
    this.slamAttack,
    this.slamRadialDamage,
    this.slamRadius,
    this.slideAttack,
    this.heavyAttackDamage,
    this.heavySlamAttack,
    this.heavySlamRadialDamage,
    this.heavySlamRadius,
    this.windUp,
    this.buildPrice,
    this.buildTime,
    this.skipBuildTimePrice,
    this.buildQuantity,
    this.consumeOnBuild,
    this.components,
    String type,
    String imageName,
    String category,
    this.tradable,
    List<Patchlog> patchlogs,
    this.channeling,
    this.damage,
    this.damageTypes,
    this.marketCost,
    this.polarities,
    this.stancePolarity,
    this.tags,
    String wikiaThumbnail,
    String wikiaUrl,
    this.disposition,
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
        );

  final List<double> damagePerShot;
  final int totalDamage;
  final double criticalChance;
  final double criticalMultiplier;
  final double procChance;
  final double attackSpeed;
  final int masteryReq;
  final int slot;
  final double omegaAttenuation;
  final int blockingAngle;
  final int comboDuration;
  final double followThrough;
  final double range;
  final int slamAttack;
  final int slamRadialDamage;
  final int slamRadius;
  final int slideAttack;
  final int heavyAttackDamage;
  final int heavySlamAttack;
  final int heavySlamRadialDamage;
  final int heavySlamRadius;
  final double windUp;
  final int buildPrice;
  final int buildTime;
  final int skipBuildTimePrice;
  final int buildQuantity;
  final bool consumeOnBuild;
  final List<Component> components;
  final bool tradable;
  final double channeling;
  final String damage;
  final Map<String, double> damageTypes;
  final int marketCost;
  final List<String> polarities;
  final String stancePolarity;
  final List<String> tags;
  final int disposition;

  @override
  List<Object> get props {
    return super.props
      ..addAll([
        damagePerShot,
        totalDamage,
        criticalChance,
        criticalMultiplier,
        procChance,
        attackSpeed,
        masteryReq,
        slot,
        omegaAttenuation,
        blockingAngle,
        comboDuration,
        followThrough,
        range,
        slamAttack,
        slamRadialDamage,
        slamRadius,
        slideAttack,
        heavyAttackDamage,
        heavySlamAttack,
        heavySlamRadialDamage,
        heavySlamRadius,
        windUp,
        buildPrice,
        buildTime,
        skipBuildTimePrice,
        buildQuantity,
        consumeOnBuild,
        components,
        tradable,
        channeling,
        damage,
        damageTypes,
        marketCost,
        polarities,
        stancePolarity,
        tags,
        disposition,
      ]);
  }
}
