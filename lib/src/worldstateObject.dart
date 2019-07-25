import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class WorldstateObject extends Equatable {
  WorldstateObject({
    this.id,
    this.activation,
    this.expiry,
    List props = const [],
  }) : super([id, activation, expiry, ...props]);

  final String id;
  final DateTime activation, expiry;
}

abstract class CycleModel extends WorldstateObject {
  CycleModel({
    String id,
    DateTime activation,
    DateTime expiry,
    this.state,
    List props = const [],
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          props: [state, ...props],
        );

  final String state;

  bool getStateBool();

  String nextState();
}
