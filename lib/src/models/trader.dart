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
}
