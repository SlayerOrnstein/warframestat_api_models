import 'package:equatable/equatable.dart';

class ComponentDrop extends Equatable {
  const ComponentDrop({
    this.location,
    this.type,
    this.rarity,
    this.rotation,
    this.chance,
  });

  final String location, type, rarity, rotation;
  final double chance;

  @override
  List<Object> get props {
    return [location, type, rarity, chance, rotation];
  }
}
