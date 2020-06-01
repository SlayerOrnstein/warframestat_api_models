import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';
import 'package:warframestat_api_model/entities.dart';
import 'package:warframestat_api_model/models.dart';

Future<void> main() async {
  final file = await File('test/worldstate.json').readAsString();
  final testState = WorldstateModel.fromJson(json.decode(file));

  test('Make sure json is properly decoded', () {
    final Worldstate worldstate = WorldstateModel.fromJson(json.decode(file));

    expect(worldstate, equals(testState));
  });
}
