// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrbiterNews _$OrbiterNewsFromJson(Map<String, dynamic> json) {
  return OrbiterNews(
    id: json['id'] as String,
    activation: json['activation'] == null
        ? null
        : DateTime.parse(json['activation'] as String),
    expiry: json['expiry'] == null
        ? null
        : DateTime.parse(json['expiry'] as String),
    message: json['message'] as String,
    link: json['link'] as String,
    imageLink: json['imageLink'] as String,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    priority: json['priority'] as bool,
    update: json['update'] as bool,
    primeAccess: json['primeAccess'] as bool,
    stream: json['stream'] as bool,
    translations: (json['translations'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
  );
}

Map<String, dynamic> _$OrbiterNewsToJson(OrbiterNews instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'message': instance.message,
      'link': instance.link,
      'imageLink': instance.imageLink,
      'date': instance.date?.toIso8601String(),
      'priority': instance.priority,
      'update': instance.update,
      'primeAccess': instance.primeAccess,
      'stream': instance.stream,
      'translations': instance.translations,
    };
