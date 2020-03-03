// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worldstate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Worldstate _$WorldstateFromJson(Map json) {
  return Worldstate(
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
    news: (json['news'] as List)
        ?.map((e) => e == null
            ? null
            : OrbiterNews.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    events: (json['events'] as List)
        ?.map((e) => e == null
            ? null
            : Event.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    alerts: (json['alerts'] as List)
        ?.map((e) => e == null
            ? null
            : Alert.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    sortie: json['sortie'] == null
        ? null
        : Sortie.fromJson((json['sortie'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    syndicateMissions: (json['syndicateMissions'] as List)
        ?.map((e) => e == null
            ? null
            : Syndicate.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    fissures: (json['fissures'] as List)
        ?.map((e) => e == null
            ? null
            : VoidFissure.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    invasions: (json['invasions'] as List)
        ?.map((e) => e == null
            ? null
            : Invasion.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    voidTrader: json['voidTrader'] == null
        ? null
        : VoidTrader.fromJson((json['voidTrader'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    dailyDeals: (json['dailyDeals'] as List)
        ?.map((e) => e == null
            ? null
            : DarvoDeal.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    persistentEnemies: (json['persistentEnemies'] as List)
        ?.map((e) => e == null
            ? null
            : PersistentEnemies.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    earthCycle: json['earthCycle'] == null
        ? null
        : Earth.fromJson((json['earthCycle'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    cetusCycle: json['cetusCycle'] == null
        ? null
        : Earth.fromJson((json['cetusCycle'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    constructionProgress: json['constructionProgress'] == null
        ? null
        : ConstructionProgress.fromJson(
            (json['constructionProgress'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    vallisCycle: json['vallisCycle'] == null
        ? null
        : Vallis.fromJson((json['vallisCycle'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    nightwave: json['nightwave'] == null
        ? null
        : Nightwave.fromJson((json['nightwave'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    sentientOutposts: json['sentientOutposts'] == null
        ? null
        : SentientOutpost.fromJson((json['sentientOutposts'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    kuva: (json['kuva'] as List)
        ?.map((e) => e == null
            ? null
            : Kuva.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    arbitration: json['arbitration'] == null
        ? null
        : Arbitration.fromJson((json['arbitration'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
  );
}

Map<String, dynamic> _$WorldstateToJson(Worldstate instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp?.toIso8601String(),
      'news': instance.news?.map((e) => e?.toJson())?.toList(),
      'events': instance.events?.map((e) => e?.toJson())?.toList(),
      'alerts': instance.alerts?.map((e) => e?.toJson())?.toList(),
      'sortie': instance.sortie?.toJson(),
      'syndicateMissions':
          instance.syndicateMissions?.map((e) => e?.toJson())?.toList(),
      'fissures': instance.fissures?.map((e) => e?.toJson())?.toList(),
      'invasions': instance.invasions?.map((e) => e?.toJson())?.toList(),
      'voidTrader': instance.voidTrader?.toJson(),
      'dailyDeals': instance.dailyDeals?.map((e) => e?.toJson())?.toList(),
      'persistentEnemies':
          instance.persistentEnemies?.map((e) => e?.toJson())?.toList(),
      'earthCycle': instance.earthCycle?.toJson(),
      'cetusCycle': instance.cetusCycle?.toJson(),
      'constructionProgress': instance.constructionProgress?.toJson(),
      'vallisCycle': instance.vallisCycle?.toJson(),
      'nightwave': instance.nightwave?.toJson(),
      'sentientOutposts': instance.sentientOutposts?.toJson(),
      'kuva': instance.kuva?.map((e) => e?.toJson())?.toList(),
      'arbitration': instance.arbitration?.toJson(),
    };
