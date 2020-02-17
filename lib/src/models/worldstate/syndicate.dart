import 'package:json_annotation/json_annotation.dart';

import '../../../worldstate_objects.dart';
import 'job.dart';

part 'syndicate.g.dart';

@JsonSerializable()
class Syndicate extends WorldstateObject {
  const Syndicate({
    String id,
    DateTime activation,
    DateTime expiry,
    this.name,
    this.active,
    this.jobs,
  }) : super(id: id, activation: activation, expiry: expiry);

  factory Syndicate.fromJson(Map<String, dynamic> json) =>
      _$SyndicateFromJson(json);

  @JsonKey(name: 'syndicate')
  final String name;

  final bool active;
  final List<Job> jobs;

  Map<String, dynamic> toJson() => _$SyndicateToJson(this);

  @override
  List<Object> get props => super.props..addAll([name, active, jobs]);
}
