import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_model/models/ghoul_purge.dart';
import 'package:worldstate_model/models/wmd.dart';

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
}

class EventConverter<T extends EventObject>
    implements JsonConverter<EventObject, Object> {
  const EventConverter();

  @override
  fromJson(json) {
    if (json is Map<String, dynamic>) {
      if (json.containsValue('Ostrons')) {
        return GhoulPurge.fromJson(json);
      } else if (json.containsValue('Corpus') ||
          json.containsValue('Grineer')) {
        return Wmd.fromJson(json);
      } else {
        return json as EventObject;
      }
    }

    return json as EventObject;
  }

  @override
  toJson(object) => object;
}
