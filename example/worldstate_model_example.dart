import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:warframestat_api_model/entities.dart';
import 'package:warframestat_api_model/models.dart';

Future<void> main() async {
  final data = await http.get('https://api.warframestat.us/pc');

  final Worldstate worldstate =
      WorldstateModel.fromJson(json.decode(data.body));

  print(worldstate.timestamp);
  print(worldstate.arbitration.archwingRequired);
}
