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
}
