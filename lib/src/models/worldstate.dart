import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'alerts.dart';
import 'arbitration.dart';
import 'cetus.dart';
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
  final Earth earthCycle;
  final Cetus cetusCycle;
  final Vallis vallisCycle;
  final Nightwave nightwave;
  final Arbitration arbitration;

  bool get isAlertActive => alerts?.isNotEmpty ?? false;

  bool get isEventActive => events?.isNotEmpty ?? false;

  bool get areAcolytesActive => persistentEnemies?.isNotEmpty ?? false;

  bool get areDealsActive {
    final deals = dailyDeals..retainWhere((d) => d.total - d.sold != 0);

    return deals.isNotEmpty ?? false;
  }

  bool get activeArbitration => arbitration.node != null;

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
}
