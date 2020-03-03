// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riven_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RivenData _$RivenDataFromJson(Map json) {
  return RivenData(
    rerolled: json['rerolled'] == null
        ? null
        : RivenRoll.fromJson((json['rerolled'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    unrolled: json['unrolled'] == null
        ? null
        : RivenRoll.fromJson((json['unrolled'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
  );
}

Map<String, dynamic> _$RivenDataToJson(RivenData instance) => <String, dynamic>{
      'rerolled': instance.rerolled?.toJson(),
      'unrolled': instance.unrolled?.toJson(),
    };
