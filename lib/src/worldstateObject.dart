import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:worldstate_model/src/reward.dart';

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

abstract class CycleObject extends WorldstateObject {
  CycleObject({
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

  bool get getStateBool;

  String get nextState;
}

abstract class EventObject extends WorldstateObject {
  EventObject({
    String id,
    DateTime activation,
    DateTime expiry,
    this.faction,
    this.description,
    this.victimNode,
    this.node,
    this.tooltip,
    this.rewards,
    List props = const [],
  }) : super(id: id, activation: activation, expiry: expiry, props: props);

  final String faction, description, victimNode, node, tooltip;
  final List<Reward> rewards;

  double get eventHealth;
}
