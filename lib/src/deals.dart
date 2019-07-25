import 'package:json_annotation/json_annotation.dart';

import 'worldstateObject.dart';

part 'deals.g.dart';

@JsonSerializable()
class DarvoDeal extends WorldstateObject {
  DarvoDeal({
    String id,
    DateTime activation,
    DateTime expiry,
    this.item,
    this.originalPrice,
    this.salePrice,
    this.total,
    this.sold,
    this.discount,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          props: [item, originalPrice, salePrice, total, sold, discount],
        );

  factory DarvoDeal.fromJson(Map<String, dynamic> json) =>
      _$DarvoDealFromJson(json);

  final String item;
  final num originalPrice, salePrice, total, sold, discount;

  Map<String, dynamic> toJson() => _$DarvoDealToJson(this);
}
