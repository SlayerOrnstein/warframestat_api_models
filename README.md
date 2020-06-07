A model library for Cephalon Navis.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:warframestat_api_models/warframestat_api_models.dart';

Future<void> main() async {
  final data = await http.get('https://api.warframestat.us/pc');

  final Worldstate worldstate =
      WorldstateModel.fromJson(json.decode(data.body));

  print(worldstate.timestamp);
  print(worldstate.arbitration.archwingRequired);
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
