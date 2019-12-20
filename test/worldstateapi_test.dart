import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test/test.dart';
import 'package:worldstate_api_model/worldstate_models.dart';

void main() {
  group('A group of tests', () {
    Map<String, dynamic> response;
    Worldstate worldstate;

    setUp(() async {
      response =
          json.decode((await http.get('https://api.warframestat.us/pc')).body);

      worldstate = Worldstate.fromJson(response);
    });

    group('Make sure all parts of the worldstate were properly decoded', () {
      test('Test timestamp', () {
        expect(worldstate.timestamp, const TypeMatcher<String>());
      });

      test('Test news', () {
        expect(worldstate.news, const TypeMatcher<List<OrbiterNews>>());
      });

      test('Test EventObject', () {
        expect(worldstate.events, const TypeMatcher<List<Event>>());
      });
    });
  });
}
