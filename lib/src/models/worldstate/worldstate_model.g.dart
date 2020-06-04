// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worldstate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorldstateModel _$WorldstateModelFromJson(Map json) {
  return WorldstateModel(
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
    news: (json['news'] as List)
        ?.map((e) => e == null
            ? null
            : OrbiterNewsModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    events: (json['events'] as List)
        ?.map((e) => e == null
            ? null
            : EventModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    alerts: (json['alerts'] as List)
        ?.map((e) => e == null
            ? null
            : AlertModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    sortie: json['sortie'] == null
        ? null
        : SortieModel.fromJson((json['sortie'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    syndicateMissions: (json['syndicateMissions'] as List)
        ?.map((e) => e == null
            ? null
            : SyndicateModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    fissures: (json['fissures'] as List)
        ?.map((e) => e == null
            ? null
            : VoidFissureModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    invasions: (json['invasions'] as List)
        ?.map((e) => e == null
            ? null
            : InvasionModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    voidTrader: json['voidTrader'] == null
        ? null
        : VoidTraderModel.fromJson((json['voidTrader'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    dailyDeals: (json['dailyDeals'] as List)
        ?.map((e) => e == null
            ? null
            : DarvoDealModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    persistentEnemies: (json['persistentEnemies'] as List)
        ?.map((e) => e == null
            ? null
            : PersistentEnemyModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    earthCycle: json['earthCycle'] == null
        ? null
        : EarthModel.fromJson((json['earthCycle'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    cetusCycle: json['cetusCycle'] == null
        ? null
        : EarthModel.fromJson((json['cetusCycle'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    constructionProgress: json['constructionProgress'] == null
        ? null
        : ConstructionProgressModel.fromJson(
            (json['constructionProgress'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    vallisCycle: json['vallisCycle'] == null
        ? null
        : VallisModel.fromJson((json['vallisCycle'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    nightwave: json['nightwave'] == null
        ? null
        : NightwaveModel.fromJson((json['nightwave'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    kuva: (json['kuva'] as List)
        ?.map((e) => e == null
            ? null
            : KuvaModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    sentientOutposts: json['sentientOutposts'] == null
        ? null
        : SentientOutpostModel.fromJson((json['sentientOutposts'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    arbitration: json['arbitration'] == null
        ? null
        : ArbitrationModel.fromJson((json['arbitration'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
  );
}

Map<String, dynamic> _$WorldstateModelToJson(WorldstateModel instance) =>
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
