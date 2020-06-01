import 'package:equatable/equatable.dart';

class Patchlog extends Equatable {
  const Patchlog({
    this.name,
    this.date,
    this.url,
    this.changes,
    this.fixes,
  });

  final String name, url, changes, fixes;
  final DateTime date;

  @override
  List<Object> get props {
    return [name, date, url, changes, fixes];
  }
}
