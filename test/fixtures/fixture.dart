import 'dart:io';
import 'package:path/path.dart' as p;

String fixture(String name) {
  try {
    return File(p.join('test', 'fixtures', name)).readAsStringSync();
  } catch (err) {
    return File(p.join('fixtures', name)).readAsStringSync();
  }
}
