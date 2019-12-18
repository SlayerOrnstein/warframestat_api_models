import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_model/src/objects/worldstate_object.dart';

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

  @override
  Syndicate copyWith({
    String id,
    DateTime activation,
    DateTime expiry,
    String name,
    bool active,
    List<Job> jobs,
  }) {
    return Syndicate(
      id: id ?? this.id,
      activation: activation ?? this.activation,
      expiry: expiry ?? this.expiry,
      name: name ?? this.name,
      active: active ?? this.active,
      jobs: jobs ?? this.jobs,
    );
  }
}
