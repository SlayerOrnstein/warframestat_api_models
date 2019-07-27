import '../models/reward.dart';
import 'worldstateObject.dart';

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
