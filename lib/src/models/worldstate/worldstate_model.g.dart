// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worldstate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorldstateModel _$WorldstateModelFromJson(Map json) {
  return $checkedNew('WorldstateModel', json, () {
    final val = WorldstateModel(
      timestamp: $checkedConvert(json, 'timestamp',
          (v) => v == null ? null : DateTime.parse(v as String)),
      news: $checkedConvert(
          json,
          'news',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : OrbiterNewsModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
      events: $checkedConvert(
          json,
          'events',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : EventModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
      alerts: $checkedConvert(
          json,
          'alerts',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : AlertModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
      sortie: $checkedConvert(
          json,
          'sortie',
          (v) => v == null
              ? null
              : SortieModel.fromJson((v as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                ))),
      syndicateMissions: $checkedConvert(
          json,
          'syndicateMissions',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : SyndicateModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
      fissures: $checkedConvert(
          json,
          'fissures',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : VoidFissureModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
      invasions: $checkedConvert(
          json,
          'invasions',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : InvasionModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
      voidTrader: $checkedConvert(
          json,
          'voidTrader',
          (v) => v == null
              ? null
              : VoidTraderModel.fromJson((v as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                ))),
      dailyDeals: $checkedConvert(
          json,
          'dailyDeals',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : DarvoDealModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
      persistentEnemies: $checkedConvert(
          json,
          'persistentEnemies',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : PersistentEnemyModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
      earthCycle: $checkedConvert(
          json,
          'earthCycle',
          (v) => v == null
              ? null
              : EarthModel.fromJson((v as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                ))),
      cetusCycle: $checkedConvert(
          json,
          'cetusCycle',
          (v) => v == null
              ? null
              : EarthModel.fromJson((v as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                ))),
      constructionProgress: $checkedConvert(
          json,
          'constructionProgress',
          (v) => v == null
              ? null
              : ConstructionProgressModel.fromJson((v as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                ))),
      vallisCycle: $checkedConvert(
          json,
          'vallisCycle',
          (v) => v == null
              ? null
              : VallisModel.fromJson((v as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                ))),
      nightwave: $checkedConvert(
          json,
          'nightwave',
          (v) => v == null
              ? null
              : NightwaveModel.fromJson((v as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                ))),
      kuva: $checkedConvert(
          json,
          'kuva',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : KuvaModel.fromJson((e as Map)?.map(
                      (k, e) => MapEntry(k as String, e),
                    )))
              ?.toList()),
      sentientOutposts: $checkedConvert(
          json,
          'sentientOutposts',
          (v) => v == null
              ? null
              : SentientOutpostModel.fromJson((v as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                ))),
      arbitration: $checkedConvert(
          json,
          'arbitration',
          (v) => v == null
              ? null
              : ArbitrationModel.fromJson((v as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                ))),
    );
    return val;
  });
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
