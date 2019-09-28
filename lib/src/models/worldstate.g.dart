// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worldstate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Worldstate _$WorldstateFromJson(Map<String, dynamic> json) {
  return Worldstate(
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
    news: (json['news'] as List)
        ?.map((e) =>
            e == null ? null : OrbiterNews.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    events: (json['events'] as List)
        ?.map(
            (e) => e == null ? null : Event.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    alerts: (json['alerts'] as List)
        ?.map(
            (e) => e == null ? null : Alert.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sortie: json['sortie'] == null
        ? null
        : Sortie.fromJson(json['sortie'] as Map<String, dynamic>),
    syndicateMissions: (json['syndicateMissions'] as List)
        ?.map((e) =>
            e == null ? null : Syndicate.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fissures: (json['fissures'] as List)
        ?.map((e) =>
            e == null ? null : VoidFissure.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    invasions: (json['invasions'] as List)
        ?.map((e) =>
            e == null ? null : Invasion.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    voidTrader: json['voidTrader'] == null
        ? null
        : VoidTrader.fromJson(json['voidTrader'] as Map<String, dynamic>),
    dailyDeals: (json['dailyDeals'] as List)
        ?.map((e) =>
            e == null ? null : DarvoDeal.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    persistentEnemies: (json['persistentEnemies'] as List)
        ?.map((e) => e == null
            ? null
            : PersistentEnemies.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    earthCycle: json['earthCycle'] == null
        ? null
        : Earth.fromJson(json['earthCycle'] as Map<String, dynamic>),
    cetusCycle: json['cetusCycle'] == null
        ? null
        : Cetus.fromJson(json['cetusCycle'] as Map<String, dynamic>),
    vallisCycle: json['vallisCycle'] == null
        ? null
        : Vallis.fromJson(json['vallisCycle'] as Map<String, dynamic>),
    nightwave: json['nightwave'] == null
        ? null
        : Nightwave.fromJson(json['nightwave'] as Map<String, dynamic>),
    arbitration: json['arbitration'] == null
        ? null
        : Arbitration.fromJson(json['arbitration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WorldstateToJson(Worldstate instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp?.toIso8601String(),
      'news': instance.news,
      'events': instance.events,
      'alerts': instance.alerts,
      'sortie': instance.sortie,
      'syndicateMissions': instance.syndicateMissions,
      'fissures': instance.fissures,
      'invasions': instance.invasions,
      'voidTrader': instance.voidTrader,
      'dailyDeals': instance.dailyDeals,
      'persistentEnemies': instance.persistentEnemies,
      'earthCycle': instance.earthCycle,
      'cetusCycle': instance.cetusCycle,
      'vallisCycle': instance.vallisCycle,
      'nightwave': instance.nightwave,
      'arbitration': instance.arbitration,
    };
