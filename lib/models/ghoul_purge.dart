import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_model/models/syndicate.dart';
import 'package:worldstate_model/worldstate_objects.dart';

part 'ghoul_purge.g.dart';

@JsonSerializable()
class GhoulPurge extends EventObject {
  GhoulPurge({
    String id,
    DateTime activation,
    DateTime expiry,
    String description,
    String victimNode,
    String node,
    String tooltip,
    String health,
    String affiliatedWith,
    this.jobs,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          faction: affiliatedWith.toLowerCase(),
          description: description,
          node: node,
          victimNode: victimNode,
          tooltip: tooltip,
          health: double.parse(health),
          props: [jobs],
        );

  factory GhoulPurge.fromJson(Map<String, dynamic> json) =>
      _$GhoulPurgeFromJson(json);

  final List<Job> jobs;

  @override
  Map<String, dynamic> get toJson => _$GhoulPurgeToJson(this);
}
