import 'package:json_annotation/json_annotation.dart';

import '../objects/cycleObject.dart';

part 'cetus.g.dart';

@JsonSerializable()
class Cetus extends CycleObject {
  Cetus({
    String id,
    int activation,
    DateTime expiry,
    String state,
    this.isDay,
    this.isCetus,
  }) : super(
          id: id,
          activation: DateTime.fromMillisecondsSinceEpoch(activation),
          expiry: expiry,
          state: state,
        );

  factory Cetus.fromJson(Map<String, dynamic> json) => _$CetusFromJson(json);

  final bool isDay;

  @JsonKey(defaultValue: true)
  final bool isCetus;

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

  Map<String, dynamic> toJson() => _$CetusToJson(this);

  @override
  List<Object> get props => super.props..addAll([isDay, isCetus]);
}
