import 'package:json_annotation/json_annotation.dart';

import '../../../worldstate_objects.dart';

part 'orbvallis.g.dart';

@JsonSerializable()
class Vallis extends CycleObject {
  const Vallis({
    String id,
    DateTime activation,
    DateTime expiry,
    String state,
    this.isWarm,
  }) : super(id: id, activation: activation, expiry: expiry, state: state);

  factory Vallis.fromJson(Map<String, dynamic> json) => _$VallisFromJson(json);

  final bool isWarm;

  Map<String, dynamic> toJson() => _$VallisToJson(this);

  @override
  bool get getStateBool => isWarm;

  @override
  String get nextState => !isWarm ? 'warm' : 'cold';

  @override
  Duration get remaining => expiry.difference(DateTime.now().toUtc());

  @override
  List<Object> get props => super.props..add(isWarm);
}
