import 'package:equatable/equatable.dart';

import 'abstract_item.dart';
import 'component.dart';
import 'patch_log.dart';

abstract class PowerSuit extends FoundryItem {
  const PowerSuit({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    String productCategory,
    bool tradable,
    List<Component> components,
    int masteryReq,
    int buildPrice,
    int buildTime,
    int skipBuildTimePrice,
    int buildQuantity,
    bool consumeOnBuild,
    this.health,
    this.shield,
    this.armor,
    this.power,
    List<Patchlog> patchlogs,
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
          tradable: tradable,
          components: components,
          masteryReq: masteryReq,
          buildPrice: buildPrice,
          buildQuantity: buildQuantity,
          buildTime: buildTime,
          skipBuildTimePrice: skipBuildTimePrice,
          consumeOnBuild: consumeOnBuild,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
        );

  final int health, shield, armor, power;

  @override
  List<Object> get props {
    return super.props..addAll([health, shield, armor, power]);
  }
}

class Ability extends Equatable {
  const Ability({this.name, this.description});

  final String name, description;

  @override
  List<Object> get props => [name, description];
}

class Warframe extends PowerSuit {
  const Warframe({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    String productCategory,
    bool tradable,
    int masteryReq,
    int buildPrice,
    int buildTime,
    int skipBuildTimePrice,
    int buildQuantity,
    bool consumeOnBuild,
    List<Component> components,
    this.aura,
    int health,
    int shield,
    int armor,
    int power,
    this.sprintSpeed,
    this.stamina,
    this.passiveDescription,
    this.abilities,
    this.sex,
    this.introduced,
    this.polarities,
    this.color,
    List<Patchlog> patchlogs,
    String wikiaThumbnail,
    String wikiaUrl,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          type: type,
          imageName: imageName,
          category: category,
          health: health,
          armor: armor,
          shield: shield,
          power: power,
          productCategory: productCategory,
          tradable: tradable,
          components: components,
          masteryReq: masteryReq,
          buildPrice: buildPrice,
          buildTime: buildTime,
          skipBuildTimePrice: skipBuildTimePrice,
          buildQuantity: buildQuantity,
          consumeOnBuild: consumeOnBuild,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
        );

  final String aura;
  final double sprintSpeed;
  final int stamina;
  final List<String> polarities;
  final String passiveDescription, introduced, sex;
  final List<Ability> abilities;
  final int color;

  @override
  List<Object> get props {
    return super.props
      ..addAll([
        aura,
        sprintSpeed,
        polarities,
        passiveDescription,
        abilities,
        introduced,
        sex,
        color
      ]);
  }
}

class Archwing extends PowerSuit {
  const Archwing({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    String productCategory,
    bool tradable,
    int masteryReq,
    int buildPrice,
    int buildTime,
    int skipBuildTimePrice,
    int buildQuantity,
    bool consumeOnBuild,
    List<Component> components,
    int health,
    int shield,
    int armor,
    int power,
    this.abilities,
    this.sprintSpeed,
    List<Patchlog> patchlogs,
    String wikiaThumbnail,
    String wikiaUrl,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          type: type,
          imageName: imageName,
          category: category,
          health: health,
          armor: armor,
          shield: shield,
          power: power,
          productCategory: productCategory,
          tradable: tradable,
          components: components,
          masteryReq: masteryReq,
          buildPrice: buildPrice,
          buildTime: buildTime,
          skipBuildTimePrice: skipBuildTimePrice,
          buildQuantity: buildQuantity,
          consumeOnBuild: consumeOnBuild,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
        );

  final double sprintSpeed;
  final List<Ability> abilities;

  @override
  List<Object> get props => super.props..addAll([sprintSpeed, abilities]);
}

class Companion extends PowerSuit {
  const Companion({
    String uniqueName,
    String name,
    String description,
    String type,
    String imageName,
    String category,
    String productCategory,
    bool tradable,
    int masteryReq,
    int buildPrice,
    int buildTime,
    int skipBuildTimePrice,
    int buildQuantity,
    bool consumeOnBuild,
    List<Component> components,
    int health,
    int shield,
    int armor,
    int power,
    List<Patchlog> patchlogs,
    String wikiaThumbnail,
    String wikiaUrl,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          type: type,
          imageName: imageName,
          category: category,
          health: health,
          armor: armor,
          shield: shield,
          power: power,
          productCategory: productCategory,
          tradable: tradable,
          components: components,
          masteryReq: masteryReq,
          buildPrice: buildPrice,
          buildTime: buildTime,
          skipBuildTimePrice: skipBuildTimePrice,
          buildQuantity: buildQuantity,
          consumeOnBuild: consumeOnBuild,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
        );
}
