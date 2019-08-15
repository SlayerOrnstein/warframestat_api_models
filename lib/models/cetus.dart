import 'package:json_annotation/json_annotation.dart';

import '../objects/cycleObject.dart';

part 'cetus.g.dart';

@JsonSerializable()
class Cetus extends CycleObject {
  Cetus({
    String id,
    // int activation,
    DateTime expiry,
    String state,
    this.isDay,
    this.isCetus = true,
  }) : super(
          id: id,
          // activation: DateTime.fromMillisecondsSinceEpoch(activation),
          expiry: expiry,
          state: state,
          props: [isDay, isCetus],
        );

  factory Cetus.fromJson(Map<String, dynamic> json) => _$CetusFromJson(json);

  final bool isDay, isCetus;

  @override
  DateTime get expiry {
    final now = DateTime.now();

    if (super.expiry?.isBefore(now) ?? true) {
      if (isDay) {
        return now.add(const Duration(minutes: 100));
      } else {
        return now.add(const Duration(minutes: 50));
      }
    }

    return super.expiry;
  }

  @override
  bool get getStateBool => isDay;

  @override
  String get nextState => !isDay ? 'Day' : 'Night';

  Map<String, dynamic> get toJson => _$CetusToJson(this);
}
