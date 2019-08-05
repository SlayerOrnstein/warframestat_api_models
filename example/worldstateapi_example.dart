import 'dart:convert';

import 'package:worldstate_model/worldstate_models.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
  final response = await http.get('https://api.warframestat.us/pc');
  final worldstateJson = json.decode(response.body);

  final worldstate = Worldstate.fromJson(worldstateJson);

  print(worldstate.timestamp); //prints the generated timestamp from worldstate
}
