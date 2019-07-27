import 'worldstateObject.dart';

abstract class CycleObject extends WorldstateObject {
  CycleObject({
    String id,
    DateTime activation,
    DateTime expiry,
    this.state,
    List props = const [],
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          props: [state, ...props],
        );

  final String state;

  bool get getStateBool;

  String get nextState;
}
