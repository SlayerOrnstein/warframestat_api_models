import 'dart:convert';

import 'package:worldstatemodel/worldstatemodel.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
  final response =
      json.decode((await http.get('https://api.warframestat.us/pc')).body);

  final worldstate = Worldstate.fromJson(response);

  print(worldstate.timestamp); //prints the generated timestamp from worldstate
}
