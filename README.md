A simple library to house the worldstate models for Cephalon Navis

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart
import 'dart:convert';

import 'package:worldstatemodel/worldstatemodel.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
  final response = await http.get('https://api.warframestat.us/pc');
  final worldstateJson = json.decode(response.body);

  final worldstate = Worldstate.fromJson(worldstateJson);

  print(worldstate.timestamp); //prints the generated timestamp from worldstate
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
