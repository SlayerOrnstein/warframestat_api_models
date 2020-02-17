import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

enum Factions { grineer, corpus, infestation, sentient, ostrons, solaris }

@immutable
abstract class WorldstateObject extends Equatable {
  const WorldstateObject({
    this.id,
    this.activation,
    this.expiry,
  });

  final String id;
  final DateTime activation, expiry;

  Duration get remaining => expiry.toLocal().difference(DateTime.now());

  @override
  List<Object> get props => [id, activation, expiry];

  // String _timestampFormatting(String locale) {
  //   final format = DateFormat();
  // }
}
