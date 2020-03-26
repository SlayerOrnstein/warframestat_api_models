// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riven_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RivenDataModel _$RivenDataModelFromJson(Map<String, dynamic> json) {
  return RivenDataModel(
    rerolledModel: json['rerolledModel'] == null
        ? null
        : RivenRollModel.fromJson(
            json['rerolledModel'] as Map<String, dynamic>),
    unrolledModel: json['unrolledModel'] == null
        ? null
        : RivenRollModel.fromJson(
            json['unrolledModel'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RivenDataModelToJson(RivenDataModel instance) =>
    <String, dynamic>{
      'rerolledModel': instance.rerolledModel,
      'unrolledModel': instance.unrolledModel,
    };
