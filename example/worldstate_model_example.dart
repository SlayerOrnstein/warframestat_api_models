import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:warframestat_api_models/warframestat_api_models.dart';

Future<void> main() async {
  final data = await http.get('https://api.warframestat.us/pc');

  final Worldstate worldstate =
      WorldstateModel.fromJson(json.decode(data.body) as Map<String, dynamic>);

  print(worldstate.timestamp);
  print(worldstate.arbitration.archwingRequired);
}
