import 'package:flutter/material.dart';

import 'seo_controller.dart';
import 'widget/meta_tag.dart';
import 'widget/seo_tag.dart';

class Seo extends StatelessWidget {
  final SeoTag tag;
  final Widget child;

  Seo.text({
    super.key,
    required String text,
    required this.child,
  }) : tag = TextTag(text: text);

  Seo.button({
    super.key,
    required String text,
    required this.child,
  }) : tag = ButtonTag(text: text);

  @override
  Widget build(BuildContext context) {
    return SeoController.process(
      context: context,
      tag: tag,
      child: child,
    );
  }

  Seo.image({
    super.key,
    required String alt,
    required String src,
    required this.child,
  }) : tag = ImageTag(alt: alt, src: src);

  Seo.link({
    super.key,
    required String anchor,
    required String href,
    required this.child,
  }) : tag = LinkTag(anchor: anchor, href: href);

  Seo.meta({
    super.key,
    required List<MetaTag> tags,
    required this.child,
  }) : tag = MetaTags(tags: tags);
}
