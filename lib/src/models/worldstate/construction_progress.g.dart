// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'construction_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConstructionProgress _$ConstructionProgressFromJson(Map<String, dynamic> json) {
  return ConstructionProgress(
    id: json['id'] as String,
    fomorianProgress: (json['fomorianProgress'] as num)?.toDouble(),
    razorbackProgress: (json['razorbackProgress'] as num)?.toDouble(),
    unknownProgress: (json['unknownProgress'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$ConstructionProgressToJson(
        ConstructionProgress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fomorianProgress': instance.fomorianProgress,
      'razorbackProgress': instance.razorbackProgress,
      'unknownProgress': instance.unknownProgress,
    };
