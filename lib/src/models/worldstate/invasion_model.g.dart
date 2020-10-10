// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invasion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvasionModel _$InvasionModelFromJson(Map json) {
  return $checkedNew('InvasionModel', json, () {
    final val = InvasionModel(
      id: $checkedConvert(json, 'id', (v) => v as String),
      activation: $checkedConvert(json, 'activation',
          (v) => v == null ? null : DateTime.parse(v as String)),
      expiry: $checkedConvert(json, 'expiry',
          (v) => v == null ? null : DateTime.parse(v as String)),
      node: $checkedConvert(json, 'node', (v) => v as String),
      desc: $checkedConvert(json, 'desc', (v) => v as String),
      attackingFaction:
          $checkedConvert(json, 'attackingFaction', (v) => v as String),
      defendingFaction:
          $checkedConvert(json, 'defendingFaction', (v) => v as String),
      attacker: $checkedConvert(
          json,
          'attacker',
          (v) => v == null
              ? null
              : FactionModel.fromJson((v as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                ))),
      defender: $checkedConvert(
          json,
          'defender',
          (v) => v == null
              ? null
              : FactionModel.fromJson((v as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                ))),
      eta: $checkedConvert(json, 'eta', (v) => v as String),
      vsInfestation: $checkedConvert(json, 'vsInfestation', (v) => v as bool),
      completed: $checkedConvert(json, 'completed', (v) => v as bool),
      completion:
          $checkedConvert(json, 'completion', (v) => (v as num)?.toDouble()),
      count: $checkedConvert(json, 'count', (v) => v as int),
    );
    return val;
  });
}

Map<String, dynamic> _$InvasionModelToJson(InvasionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'node': instance.node,
      'desc': instance.desc,
      'attackingFaction': instance.attackingFaction,
      'defendingFaction': instance.defendingFaction,
      'eta': instance.eta,
      'vsInfestation': instance.vsInfestation,
      'completed': instance.completed,
      'completion': instance.completion,
      'count': instance.count,
      'attacker': instance.attacker?.toJson(),
      'defender': instance.defender?.toJson(),
    };

FactionModel _$FactionModelFromJson(Map json) {
  return $checkedNew('FactionModel', json, () {
    final val = FactionModel(
      reward: $checkedConvert(
          json,
          'reward',
          (v) => v == null
              ? null
              : RewardModel.fromJson((v as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                ))),
      faction: $checkedConvert(json, 'faction', (v) => v as String),
      factionKey: $checkedConvert(json, 'factionKey', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$FactionModelToJson(FactionModel instance) =>
    <String, dynamic>{
      'faction': instance.faction,
      'factionKey': instance.factionKey,
      'reward': instance.reward?.toJson(),
    };
