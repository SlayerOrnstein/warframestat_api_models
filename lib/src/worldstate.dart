import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'alerts.dart';
import 'deals.dart';
import 'earth.dart';
import 'event.dart';
import 'fissure.dart';
import 'invasions.dart';
import 'news.dart';
import 'nightwave.dart';
import 'orbvallis.dart';
import 'persistentEnemies.dart';
import 'sortie.dart';
import 'syndicate.dart';
import 'trader.dart';

part 'worldstate.g.dart';

@JsonSerializable()
class Worldstate extends Equatable {
  Worldstate({
    this.timestamp,
    this.news,
    this.events,
    this.alerts,
    this.sortie,
    this.syndicateMissions,
    this.fissures,
    this.invasions,
    this.voidTrader,
    this.dailyDeals,
    this.persistentEnemies,
    this.earthCycle,
    this.cetusCycle,
    this.vallisCycle,
    this.nightwave,
  }) : super([
          timestamp,
          news,
          events,
          alerts,
          sortie,
          syndicateMissions,
          fissures,
          invasions,
          voidTrader,
          dailyDeals,
          persistentEnemies,
          earthCycle,
          cetusCycle,
          vallisCycle,
          nightwave
        ]);

  factory Worldstate.fromJson(Map<String, dynamic> json) =>
      _$WorldstateFromJson(json);

  final String timestamp;
  final List<OrbiterNews> news;
  final List<Event> events;
  final List<Alert> alerts;
  final Sortie sortie;
  final List<Syndicate> syndicateMissions;
  final List<VoidFissure> fissures;
  final List<Invasion> invasions;
  final VoidTrader voidTrader;
  final List<DarvoDeal> dailyDeals;
  final List<PersistentEnemies> persistentEnemies;
  final Earth earthCycle;
  final Earth cetusCycle;
  final Vallis vallisCycle;
  final Nightwave nightwave;

  Map<String, dynamic> toJson() => _$WorldstateToJson(this);
}
