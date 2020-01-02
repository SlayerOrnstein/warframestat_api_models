import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'alerts.dart';
import 'arbitration.dart';
import 'deals.dart';
import 'earth.dart';
import 'event.dart';
import 'fissure.dart';
import 'invasions.dart';
import 'news.dart';
import 'nightwave.dart';
import 'orbvallis.dart';
import 'persistent_enemies.dart';
import 'sortie.dart';
import 'syndicate.dart';
import 'trader.dart';

part 'worldstate.g.dart';

@JsonSerializable()
class Worldstate extends Equatable {
  const Worldstate({
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
    this.arbitration,
  });

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
  final Earth earthCycle, cetusCycle;
  final Vallis vallisCycle;
  final Nightwave nightwave;
  final Arbitration arbitration;

  bool get alertsActive => alerts?.isNotEmpty ?? false;

  bool get eventsActive => events?.isNotEmpty ?? false;

  bool get acolytesActive => persistentEnemies?.isNotEmpty ?? false;

  bool get dealsActive {
    final deals = dailyDeals..retainWhere((d) => d.total - d.sold != 0);

    return deals.isNotEmpty ?? false;
  }

  bool get arbitrationActive => arbitration?.node != null;

  Map<String, dynamic> toJson() => _$WorldstateToJson(this);

  @override
  List<Object> get props => [
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
        arbitration
      ];

  Worldstate copyWith({
    String timestamp,
    List<OrbiterNews> news,
    Event events,
    List<Alert> alerts,
    Sortie sortie,
    List<Syndicate> syndicateMissions,
    List<VoidFissure> fissures,
    List<Invasion> invasions,
    VoidTrader voidTrader,
    List<DarvoDeal> dailyDeals,
    List<PersistentEnemies> persistentEnemies,
    Earth earthCycle,
    Earth cetusCycle,
    Vallis vallisCycle,
    Nightwave nightwave,
    Arbitration arbitration,
  }) {
    return Worldstate(
      timestamp: timestamp ?? this.timestamp,
      news: news ?? this.news,
      events: events ?? this.events,
      alerts: alerts ?? this.alerts,
      sortie: sortie ?? this.sortie,
      syndicateMissions: syndicateMissions ?? this.syndicateMissions,
      fissures: fissures ?? this.fissures,
      invasions: invasions ?? this.invasions,
      voidTrader: voidTrader ?? this.voidTrader,
      dailyDeals: dailyDeals ?? this.dailyDeals,
      persistentEnemies: persistentEnemies ?? this.persistentEnemies,
      earthCycle: earthCycle ?? this.earthCycle,
      cetusCycle: cetusCycle ?? this.cetusCycle,
      vallisCycle: vallisCycle ?? this.vallisCycle,
      nightwave: nightwave ?? this.nightwave,
      arbitration: arbitration ?? this.arbitration,
    );
  }
}
