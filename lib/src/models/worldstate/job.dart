import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'job.g.dart';

@JsonSerializable()
class Job extends Equatable {
  const Job({
    this.type,
    this.pool,
    this.enemyLevels,
    this.standingStages,
  });

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

  final String type;

  @JsonKey(name: 'rewardPool')
  final dynamic pool;

  final List<int> enemyLevels, standingStages;

  Map<String, dynamic> toJson() => _$JobToJson(this);

  List<String> get rewardPool =>
      pool is List ? pool.cast<String>() : <String>[];

  @override
  List<Object> get props => [type, pool, enemyLevels, standingStages];

  Job copyWith({
    String type,
    List<String> pool,
    List<int> enemyLevels,
    List<int> standingStages,
  }) {
    return Job(
      type: type ?? this.type,
      pool: pool ?? this.pool,
      enemyLevels: enemyLevels ?? this.enemyLevels,
      standingStages: standingStages ?? this.standingStages,
    );
  }
}
