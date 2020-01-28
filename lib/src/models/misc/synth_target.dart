import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'synth_location.dart';

part 'synth_target.g.dart';

@JsonSerializable()
class SynthTarget extends Equatable {
  const SynthTarget({this.name, this.locations});

  factory SynthTarget.fromJson(Map<String, dynamic> json) =>
      _$SynthTargetFromJson(json);

  final String name;
  final List<SynthLocation> locations;

  Map<String, dynamic> toJson() => _$SynthTargetToJson(this);

  @override
  List<Object> get props => [name, locations];
}
