import 'package:json_annotation/json_annotation.dart';

import '../../entities/warframe_items/bio_weapon.dart';
import 'ability_model.dart';
import 'component_model.dart';
import 'patch_log_model.dart';

part 'bio_weapon_model.g.dart';

@JsonSerializable()
class BioWeaponModel extends BioWeapon {
  const BioWeaponModel({
    String uniqueName,
    String name,
    String description,
    String aura,
    int health,
    int shield,
    int armor,
    int power,
    int masteryReq,
    double sprintSpeed,
    String passiveDescription,
    this.abilities,
    int buildPrice,
    int buildTime,
    int skipBuildTimePrice,
    int buildQuantity,
    bool consumeOnBuild,
    this.components,
    String type,
    String imageName,
    String category,
    bool tradable,
    this.patchlogs,
    String wikiaThumbnail,
    String wikiaUrl,
    String sex,
    String introduced,
    List<String> polarities,
    int color,
  }) : super(
          uniqueName: uniqueName,
          name: name,
          description: description,
          aura: aura,
          health: health,
          shield: shield,
          armor: armor,
          power: power,
          masteryReq: masteryReq,
          sprintSpeed: sprintSpeed,
          passiveDescription: passiveDescription,
          abilities: abilities,
          buildPrice: buildPrice,
          buildTime: buildTime,
          skipBuildTimePrice: skipBuildTimePrice,
          buildQuantity: buildQuantity,
          consumeOnBuild: consumeOnBuild,
          components: components,
          type: type,
          imageName: imageName,
          category: category,
          tradable: tradable,
          patchlogs: patchlogs,
          wikiaThumbnail: wikiaThumbnail,
          wikiaUrl: wikiaUrl,
          sex: sex,
          introduced: introduced,
          polarities: polarities,
          color: color,
        );

  factory BioWeaponModel.fromJson(Map<String, dynamic> json) {
    return _$BioWeaponModelFromJson(json);
  }

  @override
  final List<ComponentModel> components;

  @override
  final List<AbilityModel> abilities;

  @override
  final List<PatchlogModel> patchlogs;

  Map<String, dynamic> toJson() => _$BioWeaponModelToJson(this);
}
