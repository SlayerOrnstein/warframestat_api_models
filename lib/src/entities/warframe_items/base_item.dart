import 'package:equatable/equatable.dart';

import 'patch_log.dart';

class BaseItem extends Equatable {
  const BaseItem({
    this.uniqueName,
    this.name,
    this.description,
    this.type,
    this.imageName,
    this.category,
    this.productCategory,
    this.tradable = false,
    this.patchlogs,
    this.wikiaUrl,
    this.wikiaThumbnail,
  });

  final String uniqueName,
      name,
      description,
      type,
      imageName,
      category,
      productCategory;

  final bool tradable;
  final List<Patchlog> patchlogs;
  final String wikiaUrl, wikiaThumbnail;

  String get imageUrl {
    const opts = 'o_webp,progressive_false';
    final uriEncoded =
        Uri.encodeFull('https://cdn.warframestat.us/img/$imageName');

    return 'https://cdn.warframestat.us/$opts/$uriEncoded';
  }

  @override
  List<Object> get props {
    return [
      uniqueName,
      name,
      description,
      type,
      imageName,
      category,
      tradable,
      patchlogs,
      wikiaUrl,
      wikiaThumbnail,
    ];
  }
}
