import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_model/models/ghoul_purge.dart';
import 'package:worldstate_model/models/wmd.dart';

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

  final String faction, description, victimNode, node, tooltip;
  final double health;

  List<Reward> get eventRewards => <Reward>[];

  Map<String, dynamic> get toJson {
    return {
      'id': id,
      'activation': activation.toIso8601String(),
      'expiry': expiry.toIso8601String(),
      'description': description,
      'faction': faction,
      'node': node,
      'tooltip': tooltip,
      'health': health,
      'rewards': json.encode(eventRewards)
    };
  }
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
          return Wmd.fromJson(json);
        ostronEvent:
        case 'Ghoul Purge':
          return GhoulPurge.fromJson(json);
        default:
          return json as EventObject;
      }
    }

    return json as EventObject;
  }

  @override
  toJson(object) => object;
}
