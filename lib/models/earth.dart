import 'package:json_annotation/json_annotation.dart';

import '../objects/cycleObject.dart';

part 'earth.g.dart';

const earthCycle = Duration(hours: 4);
const cetusDay = Duration(minutes: 100);
const cetusNight = Duration(minutes: 50);

@JsonSerializable()
class Earth extends CycleObject {
  Earth({
    String id,
    DateTime activation,
    DateTime expiry,
    String state,
    this.isDay,
    this.isCetus,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          state: state,
          props: [isDay, isCetus],
        );

  factory Earth.fromJson(Map<String, dynamic> json) => _$EarthFromJson(json);

  final bool isDay, isCetus;

  @override
  DateTime get expiry {
    final now = DateTime.now();

    if (super.expiry.isBefore(now)) {
      if (isDay) {
        return now.add(isCetus ? cetusDay : earthCycle);
      } else {
        return now.add(isCetus ? cetusNight : earthCycle);
      }
    }

    return super.expiry;
  }

  @override
  bool get getStateBool => isDay;

  @override
  String get nextState => !isDay ? 'Day' : 'Night';

  Map<String, dynamic> toJson() => _$EarthToJson(this);
}
