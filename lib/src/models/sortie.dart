import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_model/src/objects/worldstate_object.dart';

part 'sortie.g.dart';

@JsonSerializable()
class Sortie extends WorldstateObject {
  const Sortie({
    String id,
    DateTime activation,
    DateTime expiry,
    this.boss,
    this.faction,
    this.variants,
  }) : super(id: id, activation: activation, expiry: expiry);

  factory Sortie.fromJson(Map<String, dynamic> json) => _$SortieFromJson(json);

  final String boss, faction;
  final List<Variant> variants;

  Map<String, dynamic> toJson() => _$SortieToJson(this);

  @override
  List<Object> get props => super.props..addAll([boss, faction, variants]);

  @override
  Sortie copyWith({
    String id,
    DateTime activation,
    DateTime expiry,
    String boss,
    String faction,
    List<Variant> variants,
  }) {
    return Sortie(
      id: id ?? this.id,
      activation: activation ?? this.activation,
      expiry: expiry ?? this.expiry,
      boss: boss ?? this.boss,
      faction: faction ?? this.faction,
      variants: variants ?? this.variants,
    );
  }
}

@JsonSerializable()
class Variant extends Equatable {
  const Variant({
    this.missionType,
    this.modifier,
    this.modifierDescription,
    this.node,
  });

  factory Variant.fromJson(Map<String, dynamic> json) =>
      _$VariantFromJson(json);

  final String missionType, modifier, modifierDescription, node;

  Map<String, dynamic> toJson() => _$VariantToJson(this);

  @override
  List<Object> get props => [missionType, modifier, modifierDescription, node];

  Variant copyWith({
    String missionType,
    String modifier,
    String modifierDescription,
    String node,
  }) {
    return Variant(
      missionType: missionType ?? this.missionType,
      modifier: modifier ?? this.modifier,
      modifierDescription: modifierDescription ?? this.modifierDescription,
      node: node ?? this.node,
    );
  }
}
