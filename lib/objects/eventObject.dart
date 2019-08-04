import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_model/models/ghoul_purge.dart';
import 'package:worldstate_model/models/generic_event.dart';

import '../models/reward.dart';
import 'worldstateObject.dart';

class EventObject extends WorldstateObject {
  EventObject({
    String id,
    DateTime activation,
    DateTime expiry,
    this.faction,
    this.description,
    this.victimNode,
    this.node,
    this.tooltip,
    this.health,
    List props = const [],
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          props: [
            faction,
            description,
            victimNode,
            node,
            tooltip,
            health,
            ...props
          ],
        );

  final String faction, description, victimNode, node, tooltip, health;

  List<Reward> get eventRewards => <Reward>[];
}

class EventConverter<T extends EventObject>
    implements JsonConverter<EventObject, Object> {
  const EventConverter();

  @override
  fromJson(json) {
    if (json is Map<String, dynamic>) {
      switch (json['description']) {
        case 'Plague Star':
          continue ostronEvent;
        case 'Razorback Armada':
          continue wmdEvent;
        wmdEvent:
        case 'Fomorian':
          return GenericEvent.fromJson(json);
        ostronEvent:
        case 'Ghoul Purge':
          return GhoulPurge.fromJson(json);
        default:
          return GenericEvent.fromJson(json);
      }
    }

    return json as EventObject;
  }

  @override
  toJson(object) => object;
}
