import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_model/src/objects/cycle_object.dart';

part 'earth.g.dart';

@JsonSerializable()
class Earth extends CycleObject {
  const Earth({
    String id,
    DateTime activation,
    DateTime expiry,
    String state,
    this.isDay,
    this.isCetus,
  }) : super(id: id, activation: activation, expiry: expiry, state: state);

  factory Earth.fromJson(Map<String, dynamic> json) => _$EarthFromJson(json);

  final bool isDay;

  @JsonKey(defaultValue: true)
  final bool isCetus;

  @override
  DateTime get expiry {
    const earthCycle = Duration(hours: 4);
    const cetusDay = Duration(minutes: 100);
    const cetusNight = Duration(minutes: 50);

    final now = DateTime.now();

    if (super.expiry?.isBefore(now) ?? true) {
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

  @override
  List<Object> get props => super.props..add(isDay);

  @override
  Earth copyWith({
    String id,
    DateTime activation,
    DateTime expiry,
    String state,
    bool isDay,
    bool isCetus,
  }) {
    return Earth(
      id: id ?? this.id,
      activation: activation ?? this.activation,
      expiry: expiry ?? this.expiry,
      state: state ?? this.state,
      isDay: isDay ?? this.isDay,
      isCetus: isCetus ?? this.isCetus,
    );
  }
}
