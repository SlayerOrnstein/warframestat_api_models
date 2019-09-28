import 'package:json_annotation/json_annotation.dart';

import '../objects/cycleObject.dart';

part 'orbvallis.g.dart';

@JsonSerializable()
class Vallis extends CycleObject {
  Vallis({
    String id,
    DateTime activation,
    DateTime expiry,
    String state,
    this.isWarm,
  }) : super(id: id, activation: activation, expiry: expiry, state: state);

  factory Vallis.fromJson(Map<String, dynamic> json) => _$VallisFromJson(json);

  final bool isWarm;

  @override
  DateTime get expiry {
    final now = DateTime.now();

    if (super.expiry.isBefore(now)) {
      if (isWarm) {
        return now.add(const Duration(minutes: 6, seconds: 40));
      } else {
        return now.add(const Duration(minutes: 20));
      }
    }

    return super.expiry;
  }

  @override
  bool get getStateBool => isWarm;

  @override
  String get nextState => !isWarm ? 'warm' : 'cold';

  Map<String, dynamic> toJson() => _$VallisToJson(this);

  @override
  List<Object> get props => super.props..add(isWarm);
}
