import 'package:json_annotation/json_annotation.dart';

import '../objects/cycleObject.dart';

part 'earth.g.dart';

const earthCycle = Duration(hours: 4);

@JsonSerializable()
class Earth extends CycleObject {
  Earth({
    String id,
    DateTime activation,
    DateTime expiry,
    String state,
    this.isDay,
  }) : super(id: id, activation: activation, expiry: expiry, state: state);

  factory Earth.fromJson(Map<String, dynamic> json) => _$EarthFromJson(json);

  final bool isDay;

  @override
  DateTime get expiry {
    final now = DateTime.now();

    if (super.expiry?.isBefore(now) ?? true) {
      if (isDay) {
        return now.add(earthCycle);
      } else {
        return now.add(earthCycle);
      }
    }

    return super.expiry;
  }

  @override
  bool get getStateBool => isDay;

  @override
  String get nextState => !isDay ? 'Day' : 'Night';

  Map<String, dynamic> toJson() => _$EarthToJson(this);

  @override
  List<Object> get props => super.props..add(isDay);
}
