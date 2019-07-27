// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invasions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invasion _$InvasionFromJson(Map<String, dynamic> json) {
  return Invasion(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    node: json['node'] as String,
    desc: json['desc'] as String,
    attackingFaction: json['attackingFaction'] as String,
    defendingFaction: json['defendingFaction'] as String,
    eta: json['eta'] as String,
    vsInfestation: json['vsInfestation'] as bool,
    completed: json['completed'] as bool,
    completion: json['completion'] as num,
    count: json['count'] as num,
    attackerReward: json['attackerReward'] == null
        ? null
        : Reward.fromJson(json['attackerReward'] as Map<String, dynamic>),
    defenderReward: json['defenderReward'] == null
        ? null
        : Reward.fromJson(json['defenderReward'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InvasionToJson(Invasion instance) => <String, dynamic>{
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
      'attackerReward': instance.attackerReward,
      'defenderReward': instance.defenderReward,
    };
