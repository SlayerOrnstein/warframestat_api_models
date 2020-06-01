import 'package:equatable/equatable.dart';

class Ability extends Equatable {
  const Ability({this.name, this.description});

  final String name, description;

  @override
  List<Object> get props => [name, description];
}
