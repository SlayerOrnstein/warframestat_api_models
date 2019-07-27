import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class WorldstateObject extends Equatable {
  WorldstateObject({
    this.id,
    this.activation,
    this.expiry,
    List props = const [],
  }) : super([id, activation, expiry, ...props]);

  final String id;
  final DateTime activation, expiry;
}
