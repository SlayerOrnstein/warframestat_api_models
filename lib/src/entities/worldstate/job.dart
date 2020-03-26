import 'package:equatable/equatable.dart';

class Job extends Equatable {
  const Job({
    this.type,
    this.rewardPool,
    this.enemyLevels,
    this.standingStages,
  });

  final String type;
  final List<String> rewardPool;
  final List<int> enemyLevels, standingStages;

  /// Calculates total standing per stage
  int get totalStanding => standingStages.fold(0, (a, b) => a + b);

  @override
  List<Object> get props => [type, rewardPool, enemyLevels, standingStages];
}
