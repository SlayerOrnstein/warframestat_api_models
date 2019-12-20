import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../worldstate_objects.dart';

part 'trader.g.dart';

@JsonSerializable()
class VoidTrader extends WorldstateObject {
  const VoidTrader({
    String id,
    DateTime activation,
    DateTime expiry,
    this.character,
    this.location,
    this.active,
    this.inventory,
  }) : super(id: id, activation: activation, expiry: expiry);

  factory VoidTrader.fromJson(Map<String, dynamic> json) =>
      _$VoidTraderFromJson(json);

  @JsonKey(defaultValue: '')
  final String character, location;

  @JsonKey(defaultValue: false)
  final bool active;

  @JsonKey(defaultValue: [])
  final List<InventoryItem> inventory;

  Map<String, dynamic> toJson() => _$VoidTraderToJson(this);

  @override
  List<Object> get props =>
      super.props..addAll([character, location, active, inventory]);

  @override
  VoidTrader copyWith({
    String id,
    DateTime activation,
    DateTime expiry,
    String character,
    String location,
    bool active,
    List<InventoryItem> inventory,
  }) {
    return VoidTrader(
      id: id ?? this.id,
      activation: activation ?? this.activation,
      expiry: expiry ?? this.expiry,
      character: character ?? this.character,
      location: location ?? this.location,
      active: active ?? this.active,
      inventory: inventory ?? this.inventory,
    );
  }
}

@JsonSerializable()
class InventoryItem extends Equatable {
  const InventoryItem({this.itemName, this.ducats, this.credits});

  factory InventoryItem.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemFromJson(json);

  @JsonKey(name: 'item')
  final String itemName;

  final int ducats, credits;

  Map<String, dynamic> toJson() => _$InventoryItemToJson(this);

  @override
  List<Object> get props => [itemName, ducats, credits];

  InventoryItem copyWith({String itemName, int ducats, int credits}) {
    return InventoryItem(
      itemName: itemName ?? this.itemName,
      ducats: ducats ?? this.ducats,
      credits: credits ?? this.credits,
    );
  }
}
