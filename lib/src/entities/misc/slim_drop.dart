import 'package:equatable/equatable.dart';

class SlimDrop extends Equatable {
  const SlimDrop({this.place, this.item, this.rarity, this.chance});

  final String place;
  final String item;
  final String rarity;
  final num chance;

  @override
  List<Object> get props => [place, item, rarity, chance];
}
