import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_api_model/src/entities/worldstate.dart';

import 'alert_model.dart';
import 'arbitration_model.dart';
import 'construction_progress_model.dart';
import 'darvo_deal_model.dart';
import 'earth_model.dart';
import 'event_model.dart';
import 'fissure_model.dart';
import 'invasion_model.dart';
import 'kuva_model.dart';
import 'news_model.dart';
import 'nightwave_model.dart';
import 'persistent_enemy_model.dart';
import 'sentient_outpost_model.dart';
import 'sortie_model.dart';
import 'syndicate_model.dart';
import 'vallis_model.dart';
import 'void_trader_model.dart';

part 'worldstate_model.g.dart';

@JsonSerializable()
class WorldstateModel extends Worldstate {
  const WorldstateModel({
    DateTime timestamp,
    @JsonKey(name: 'news') List<OrbiterNewsModel> orbiterNewsModels,
    @JsonKey(name: 'events') List<EventModel> eventModels,
    @JsonKey(name: 'alerts') List<AlertModel> alertModels,
    @JsonKey(name: 'sortie') SortieModel sortieModel,
    @JsonKey(name: 'syndicateMissions')
        List<SyndicateModel> syndicateMissionModels,
    @JsonKey(name: 'fissures') List<VoidFissureModel> fissureModels,
    @JsonKey(name: 'invasions') List<InvasionModel> invasionModels,
    @JsonKey(name: 'voidTrader') VoidTraderModel voidTraderModel,
    @JsonKey(name: 'dailyDeals') List<DarvoDealModel> dailyDealModels,
    @JsonKey(name: 'persistentEnemies')
        List<PersistentEnemyModel> persistentEnemyModels,
    @JsonKey(name: 'earthCycle') EarthModel earthCycleModel,
    @JsonKey(name: 'cetusCycle') EarthModel cetusCycleModel,
    @JsonKey(name: 'constructionProgress')
        ConstructionProgressModel constructionProgressModel,
    @JsonKey(name: 'vallisCycle') VallisModel vallisCycleModel,
    @JsonKey(name: 'nightwave') NightwaveModel nightwaveModel,
    @JsonKey(name: 'sentientOutposts')
        SentientOutpostModel sentientOutpostModel,
    @JsonKey(name: 'kuva') List<KuvaModel> kuvaModel,
    @JsonKey(name: 'arbitration') ArbitrationModel arbitrationModel,
  }) : super(
          timestamp: timestamp,
          news: orbiterNewsModels,
          events: eventModels,
          alerts: alertModels,
          sortie: sortieModel,
          syndicateMissions: syndicateMissionModels,
          fissures: fissureModels,
          invasions: invasionModels,
          voidTrader: voidTraderModel,
          dailyDeals: dailyDealModels,
          persistentEnemies: persistentEnemyModels,
          earthCycle: earthCycleModel,
          cetusCycle: cetusCycleModel,
          constructionProgress: constructionProgressModel,
          vallisCycle: vallisCycleModel,
          nightwave: nightwaveModel,
          kuva: kuvaModel,
          sentientOutposts: sentientOutpostModel,
          arbitration: arbitrationModel,
        );

  factory WorldstateModel.fromJson(Map<String, dynamic> json) {
    return _$WorldstateModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WorldstateModelToJson(this);
}
