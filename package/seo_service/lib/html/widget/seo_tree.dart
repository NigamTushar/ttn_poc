import 'package:flutter/material.dart';

import '../seo_html.dart';
import 'meta_tag.dart';
import 'seo_tag.dart';

abstract class SeoTree {
  const SeoTree();

  Stream<void> changes();

  SeoTreeNode? traverse();

  Widget process(SeoTag tag, Widget child);
}

abstract class SeoTreeNode {
  bool get seo;

  SeoHtml toHtml();

  String text({
    required String text,
    required String content,
  }) {
    return '<h1 style="color:black;">$text</h1>$content';
  }

  String button({
    required String text,
    required String content,
  }) {
    return ' <button type="button">$text</button>';
  }

  String image({
    required String src,
    required String alt,
    required double? height,
    required double? width,
    required String content,
  }) {
    return '<noscript><img src="$src" alt="$alt" height="$height" width="$width"/></noscript>$content';
  }

  String link({
    required String anchor,
    required String href,
    required String content,
  }) {
    return '<div><a href="$href"><p>$anchor</p></a>$content</div>';
  }

  String meta({
    required MetaTag tag,
  }) {
    if (tag is MetaNameTag) {
      return '<meta name="${tag.name}" content="${tag.content}" flt-seo>';
    } else if (tag is MetaPropertyTag) {
      return '<meta property="${tag.property}" content="${tag.content}" flt-seo>';
    }

    throw UnimplementedError('unsupported tag: $tag');
  }

  String div({
    required String content,
  }) {
    return '<div>$content</div>';
  }
}