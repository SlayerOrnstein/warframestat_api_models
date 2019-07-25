import 'package:json_annotation/json_annotation.dart';

import 'worldstateObject.dart';

part 'earth.g.dart';

const earthCycle = Duration(hours: 4);
const cetusDay = Duration(minutes: 100);
const cetusNight = Duration(minutes: 50);

@JsonSerializable()
class Earth extends CycleModel {
  Earth({
    String id,
    //DateTime activation,
    DateTime expiry,
    String state,
    this.isDay,
    this.isCetus,
  }) : super(id: id, expiry: expiry, state: state, props: [isDay, isCetus]);

  factory Earth.fromJson(Map<String, dynamic> json) => _$EarthFromJson(json);

  final bool isDay, isCetus;

  @override
  bool getStateBool() => isDay;

  @override
  String nextState() => !isDay ? 'Day' : 'Night';

  Map<String, dynamic> toJson() => _$EarthToJson(this);
}
