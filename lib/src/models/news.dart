import 'package:json_annotation/json_annotation.dart';
import 'package:worldstate_model/src/objects/worldstate_object.dart';

part 'news.g.dart';

@JsonSerializable()
class OrbiterNews extends WorldstateObject {
  const OrbiterNews({
    String id,
    this.message,
    this.link,
    this.imageLink,
    this.priority,
    this.date,
    this.update,
    this.primeAccess,
    this.stream,
    this.translations,
  }) : super(id: id);

  factory OrbiterNews.fromJson(Map<String, dynamic> json) =>
      _$OrbiterNewsFromJson(json);

  final String message, link, imageLink;
  final DateTime date;
  final bool priority, update, primeAccess, stream;

  final Map<String, String> translations;

  Map<String, dynamic> toJson() => _$OrbiterNewsToJson(this);

  @override
  List<Object> get props => super.props
    ..addAll([
      message,
      link,
      imageLink,
      date,
      priority,
      update,
      primeAccess,
      stream,
      translations
    ]);

  @override
  OrbiterNews copyWith({
    String id,
    String message,
    String link,
    String imageLink,
    DateTime date,
    bool priority,
    bool update,
    bool primeAccess,
    bool stream,
    Map<String, String> translations,
  }) {
    return OrbiterNews(
      id: id ?? this.id,
      message: message ?? this.message,
      link: link ?? this.link,
      imageLink: imageLink ?? this.imageLink,
      date: date ?? this.date,
      priority: priority ?? this.priority,
      update: update ?? this.update,
      primeAccess: primeAccess ?? this.primeAccess,
      stream: stream ?? this.stream,
      translations: translations ?? this.translations,
    );
  }
}
