import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../objects/worldstateObject.dart';

part 'trader.g.dart';

@JsonSerializable()
class VoidTrader extends WorldstateObject {
  VoidTrader({
    String id,
    DateTime activation,
    DateTime expiry,
    this.character,
    this.location,
    this.active,
    this.inventory,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          props: [character, location, active, inventory],
        );

  factory VoidTrader.fromJson(Map<String, dynamic> json) =>
      _$VoidTraderFromJson(json);

  final String character, location;
  final bool active;
  final List<InventoryItem> inventory;

  Map<String, dynamic> toJson() => _$VoidTraderToJson(this);
}

@JsonSerializable()
class InventoryItem extends Equatable {
  InventoryItem({this.itemName, this.ducats, this.credits})
      : super([itemName, ducats, credits]);

  factory InventoryItem.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemFromJson(json);

  @JsonKey(name: 'item')
  final String itemName;

  final int ducats, credits;

  Map<String, dynamic> toJson() => _$InventoryItemToJson(this);
}
