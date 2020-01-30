import 'package:json_annotation/json_annotation.dart';

import '../../../worldstate_objects.dart';

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
  final bool isCetus;

  Map<String, dynamic> toJson() => _$EarthToJson(this);

  @override
  bool get getStateBool => isDay;

  @override
  String get nextState => !isDay ? 'Day' : 'Night';

  @override
  Duration get remaining => expiry.difference(DateTime.now().toUtc());

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
