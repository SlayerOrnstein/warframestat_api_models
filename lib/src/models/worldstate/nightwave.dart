import 'package:json_annotation/json_annotation.dart';

import '../../../worldstate_objects.dart';

part 'nightwave.g.dart';

@JsonSerializable()
class Nightwave extends WorldstateObject {
  const Nightwave({
    String id,
    DateTime activation,
    DateTime expiry,
    this.startString,
    this.tag,
    this.active,
    this.season,
    this.phase,
    this.possibleChallenges,
    this.activeChallenges,
    this.rewardTypes,
  }) : super(id: id, activation: activation, expiry: expiry);

  factory Nightwave.fromJson(Map<String, dynamic> json) =>
      _$NightwaveFromJson(json);

  final String startString, tag;
  final bool active;
  final num season, phase;

  final List<Challenge> possibleChallenges, activeChallenges;
  final List<String> rewardTypes;

  List<Challenge> dailyChallenges() {
    return activeChallenges.where((c) => c.isDaily == true).toList()
      ..sort((a, b) => a.expiry.compareTo(b.expiry));
  }

  List<Challenge> weeklyChallenges() {
    return activeChallenges.where((c) => c.isDaily == null).toList()
      ..sort((a, b) {
        if (a.isElite ?? false) {
          return 0;
        } else {
          return 1;
        }
      });
  }

  Map<String, dynamic> toJson() => _$NightwaveToJson(this);

  @override
  List<Object> get props => super.props
    ..addAll([
      startString,
      tag,
      active,
      season,
      phase,
      possibleChallenges,
      activeChallenges,
      rewardTypes,
    ]);

  @override
  WorldstateObject copyWith({
    String id,
    DateTime activation,
    DateTime expiry,
    String startString,
    String tag,
    bool active,
    num season,
    num phase,
    List<Challenge> possibleChallenges,
    List<Challenge> activeChallenges,
    List<String> rewardTypes,
  }) {
    return Nightwave(
      id: id ?? this.id,
      activation: activation ?? this.activation,
      expiry: expiry ?? expiry,
      startString: startString ?? this.startString,
      tag: tag ?? this.tag,
      active: active ?? this.active,
      season: season ?? this.season,
      phase: phase ?? this.phase,
      possibleChallenges: possibleChallenges ?? this.possibleChallenges,
      activeChallenges: activeChallenges ?? this.activeChallenges,
      rewardTypes: rewardTypes ?? this.rewardTypes,
    );
  }
}

@JsonSerializable()
class Challenge extends WorldstateObject {
  const Challenge({
    String id,
    DateTime activation,
    DateTime expiry,
    this.startString,
    this.desc,
    this.title,
    this.active,
    this.isDaily,
    this.isElite,
    this.reputation,
  }) : super(id: id, activation: activation, expiry: expiry);

  factory Challenge.fromJson(Map<String, dynamic> json) =>
      _$ChallengeFromJson(json);

  final String startString, desc, title;
  final bool active, isDaily, isElite;
  final num reputation;

  Map<String, dynamic> toJson() => _$ChallengeToJson(this);

  @override
  List<Object> get props => super.props
    ..addAll([startString, desc, title, active, isDaily, isElite, reputation]);

  @override
  WorldstateObject copyWith({
    String id,
    DateTime activation,
    DateTime expiry,
    String startString,
    String desc,
    String title,
    bool active,
    bool isDaily,
    bool isElite,
    num reputation,
  }) {
    return Challenge(
      id: id ?? this.id,
      activation: activation ?? this.activation,
      expiry: expiry ?? this.expiry,
      startString: startString ?? this.startString,
      desc: desc ?? this.desc,
      title: title ?? this.title,
      active: active ?? this.active,
      isDaily: isDaily ?? this.isElite,
      reputation: reputation ?? this.reputation,
    );
  }
}
