import 'package:copy_with_annotation/copy_with_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'synth_location.dart';

part 'synth_target.g.dart';

@CopyWith()
@JsonSerializable()
class SynthTarget {
  const SynthTarget({this.name, this.locations});

  factory SynthTarget.fromJson(Map<String, dynamic> json) =>
      _$SynthTargetFromJson(json);

  final String name;
  final List<SynthLocation> locations;

  Map<String, dynamic> toJson() => _$SynthTargetToJson(this);
}
