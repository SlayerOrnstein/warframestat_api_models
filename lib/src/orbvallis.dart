import 'package:json_annotation/json_annotation.dart';

import 'worldstateObject.dart';

part 'orbvallis.g.dart';

@JsonSerializable()
class Vallis extends CycleModel {
  Vallis(
      {String id,
      DateTime activation,
      DateTime expiry,
      String state,
      this.isWarm})
      : super(
          id: id,
          activation: activation,
          expiry: expiry,
          state: state,
          props: [isWarm],
        );

  factory Vallis.fromJson(Map<String, dynamic> json) => _$VallisFromJson(json);

  final bool isWarm;

  @override
  bool getStateBool() => isWarm;

  @override
  String nextState() => !isWarm ? 'warm' : 'cold';

  Map<String, dynamic> toJson() => _$VallisToJson(this);
}
