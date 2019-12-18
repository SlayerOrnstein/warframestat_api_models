import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_model/src/objects/cycle_object.dart';

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

  @override
  Vallis copyWith({
    String id,
    DateTime activation,
    DateTime expiry,
    String state,
    bool isWarm,
  }) {
    return Vallis(
      id: id ?? this.id,
      activation: activation ?? this.activation,
      expiry: expiry ?? this.expiry,
      state: state ?? this.state,
      isWarm: isWarm ?? this.isWarm,
    );
  }
}
