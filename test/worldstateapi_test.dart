import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test/test.dart';
import 'package:worldstate_model/worldstate_model.dart';

void main() {
  group('A group of tests', () {
    Map<String, dynamic> response;
    Worldstate worldstate;

    setUp(() async {
      response =
          json.decode((await http.get('https://api.warframestat.us/pc')).body);

      worldstate = Worldstate.fromJson(response);
    });

    test('First Test', () {
      expect(worldstate, TypeMatcher<Worldstate>());
    });
  });
}
