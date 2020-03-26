import 'package:equatable/equatable.dart';

class SlimDrop extends Equatable {
  const SlimDrop({this.place, this.item, this.rarity, this.dropChance});

  final String place;
  final String item;
  final String rarity;
  final dynamic dropChance;

  num get chance => dropChance is String ? num.parse(dropChance) : dropChance;

  @override
  List<Object> get props => [place, item, rarity, chance];
}
