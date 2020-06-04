// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riven_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RivenDataModel _$RivenDataModelFromJson(Map json) {
  return RivenDataModel(
    rerolledModel: json['rerolled'] == null
        ? null
        : RivenRollModel.fromJson((json['rerolled'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    unrolledModel: json['unrolled'] == null
        ? null
        : RivenRollModel.fromJson((json['unrolled'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
  );
}

Map<String, dynamic> _$RivenDataModelToJson(RivenDataModel instance) =>
    <String, dynamic>{
      'rerolled': instance.rerolledModel?.toJson(),
      'unrolled': instance.unrolledModel?.toJson(),
    };
