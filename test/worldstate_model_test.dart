import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';
import 'package:worldstate_api_model/entities.dart';
import 'package:worldstate_api_model/models.dart';

Future<void> main() async {
  final file = await File('test/worldstate.json').readAsString();

  test('Make sure json is properly decoded', () {
    final Worldstate worldstate = WorldstateModel.fromJson(json.decode(file));

    expect(worldstate, WorldstateModel.fromJson(json.decode(file)));
  });
}
