import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../worldstate_objects.dart';

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
}
