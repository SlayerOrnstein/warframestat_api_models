import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_model/src/objects/worldstate_object.dart';

part 'deals.g.dart';

@JsonSerializable()
class DarvoDeal extends WorldstateObject {
  const DarvoDeal({
    String id,
    DateTime activation,
    DateTime expiry,
    this.item,
    this.originalPrice,
    this.salePrice,
    this.total,
    this.sold,
    this.discount,
  }) : super(id: id, activation: activation, expiry: expiry);

  factory DarvoDeal.fromJson(Map<String, dynamic> json) =>
      _$DarvoDealFromJson(json);

  final String item;
  final num originalPrice, salePrice, total, sold, discount;

  Map<String, dynamic> toJson() => _$DarvoDealToJson(this);

  @override
  List<Object> get props => super.props
    ..addAll([item, originalPrice, salePrice, total, sold, discount]);

  @override
  WorldstateObject copyWith({
    String id,
    DateTime activation,
    DateTime expiry,
    String item,
    num originalPrice,
    num salePrice,
    num total,
    num sold,
    num discount,
  }) {
    return DarvoDeal(
      id: id ?? this.id,
      activation: activation ?? this.activation,
      expiry: expiry ?? this.expiry,
      item: item ?? this.item,
      originalPrice: originalPrice ?? this.originalPrice,
      salePrice: salePrice ?? this.salePrice,
      total: total ?? this.total,
      sold: sold ?? this.sold,
      discount: discount ?? this.discount,
    );
  }
}
