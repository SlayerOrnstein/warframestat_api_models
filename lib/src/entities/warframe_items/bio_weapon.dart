import 'ability.dart';
import 'base_item.dart';
import 'component.dart';
import 'patch_log.dart';

class BioWeapon extends BaseItem {
  const BioWeapon({
    String uniqueName,
    String name,
    String description,
    this.aura,
    this.health,
    this.shield,
    this.armor,
    this.power,
    this.masteryReq,
    this.sprintSpeed,
    this.passiveDescription,
    this.abilities,
    this.buildPrice,
    this.buildTime,
    this.skipBuildTimePrice,
    this.buildQuantity,
    this.consumeOnBuild,
    String type,
    String imageName,
    String category,
    String productCategory,
    bool isTradable,
    List<Component> components,
    List<Patchlog> patchlogs,
    String wikiaThumbnail,
    String wikiaUrl,
    this.sex,
    this.introduced,
    this.polarities,
    this.color,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          type: type,
          imageName: imageName,
          category: category,
          productCategory: productCategory,
          isTradable: isTradable,
          components: components,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
        );

  final String aura;
  final int health, shield, armor, power, masteryReq;
  final double sprintSpeed;
  final int buildPrice, buildTime, skipBuildTimePrice, buildQuantity;
  final bool consumeOnBuild;

  final List<Ability> abilities;
  final List<String> polarities;
  final String passiveDescription, introduced, sex;
  final int color;

  @override
  List<Object> get props {
    return super.props
      ..addAll([
        aura,
        health,
        shield,
        armor,
        power,
        masteryReq,
        sprintSpeed,
        buildPrice,
        buildTime,
        skipBuildTimePrice,
        buildQuantity,
        consumeOnBuild,
        components,
        abilities,
        polarities,
        passiveDescription,
        introduced,
        sex,
        color
      ]);
  }
}
