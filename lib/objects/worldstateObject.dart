import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

enum Factions { grineer, corpus, infestation, sentient, ostrons, solaris }

@immutable
abstract class WorldstateObject extends Equatable {
  WorldstateObject({
    @required this.id,
    this.activation,
    this.expiry,
    List props = const [],
  }) : super([id, activation, expiry, ...props]);

  final String id;
  final DateTime activation, expiry;
}
