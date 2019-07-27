import 'package:json_annotation/json_annotation.dart';

import '../objects/worldstateObject.dart';

part 'news.g.dart';

@JsonSerializable()
class OrbiterNews extends WorldstateObject {
  OrbiterNews({
    String id,
    DateTime activation,
    DateTime expiry,
    this.message,
    this.link,
    this.imageLink,
    this.date,
    this.priority,
    this.update,
    this.primeAccess,
    this.stream,
    this.translations,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          props: [
            message,
            link,
            imageLink,
            date,
            priority,
            update,
            primeAccess,
            stream,
            translations
          ],
        );

  factory OrbiterNews.fromJson(Map<String, dynamic> json) =>
      _$OrbiterNewsFromJson(json);

  final String message, link, imageLink;
  final DateTime date;
  final bool priority, update, primeAccess, stream;

  final Map<String, String> translations;

  Map<String, dynamic> toJson() => _$OrbiterNewsToJson(this);
}
