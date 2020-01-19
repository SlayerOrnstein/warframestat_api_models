import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'slim_drop.g.dart';

@JsonSerializable()
class SlimDrop extends Equatable {
  const SlimDrop({this.place, this.item, this.rarity, this.dropChance});

  factory SlimDrop.fromJson(Map<String, dynamic> json) =>
      _$SlimDropFromJson(json);

  final String place;
  final String item;
  final String rarity;

  @JsonKey(name: 'chance')
  final dynamic dropChance;

  num get chance => dropChance is String ? num.parse(dropChance) : dropChance;

  Map<String, dynamic> toJson() => _$SlimDropToJson(this);

  @override
  List<Object> get props => [place, item, rarity, dropChance];
}
