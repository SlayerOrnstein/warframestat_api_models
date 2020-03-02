import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_api_model/src/models/worldstate/construction_progress.dart';
import 'package:worldstate_api_model/src/models/worldstate/sentient_outpost.dart';

import 'alerts.dart';
import 'arbitration.dart';
import 'deals.dart';
import 'earth.dart';
import 'event.dart';
import 'fissure.dart';
import 'invasions.dart';
import 'kuva.dart';
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
    this.constructionProgress,
    this.vallisCycle,
    this.nightwave,
    this.sentientOutposts,
    this.kuva,
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
  final ConstructionProgress constructionProgress;
  final Vallis vallisCycle;
  final Nightwave nightwave;
  final SentientOutpost sentientOutposts;
  final List<Kuva> kuva;
  final Arbitration arbitration;

  Map<String, dynamic> toJson() => _$WorldstateToJson(this);

  @override
  List<Object> get props {
    return [
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
      constructionProgress,
      vallisCycle,
      nightwave,
      sentientOutposts,
      kuva,
      arbitration
    ];
  }
}
