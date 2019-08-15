import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
// import 'package:worldstate_model/models/arbitration.dart';
import 'package:worldstate_model/models/event.dart';

import 'alerts.dart';
import 'cetus.dart';
import 'deals.dart';
import 'earth.dart';
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
class Worldstate<T> extends Equatable {
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
    //this.arbitration,
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
          nightwave,
          //arbitration
        ]);

  factory Worldstate.fromJson(Map<String, dynamic> json) =>
      _$WorldstateFromJson(json);

  final DateTime timestamp;
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
  final Cetus cetusCycle;
  final Vallis vallisCycle;
  final Nightwave nightwave;
  //final Arbitration arbitration;

  Map<String, dynamic> toJson() => _$WorldstateToJson(this);
}
