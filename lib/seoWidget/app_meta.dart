import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seo_service/html/seo_widget.dart';
import 'package:seo_service/html/widget/meta_tag.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AppMeta extends StatefulWidget {
  final String title;
  final String description;
  final String? author;
  final List<MetaNameTag> ogTags;

  final Widget child;

  const AppMeta({
    super.key,
    required this.title,
    required this.description,
    this.author,
    this.ogTags = const [],
    required this.child,
  });

  @override
  State<AppMeta> createState() => _AppMetaState();
}

class _AppMetaState extends State<AppMeta> {
  final _key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: _key,
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.0) {
          SystemChrome.setApplicationSwitcherDescription(
            ApplicationSwitcherDescription(
              label: widget.title,
              primaryColor: Theme.of(context).primaryColor.value,
            ),
          );
        }
      },
      child: Seo.meta(
        tags: widget.ogTags.map((e) => e).toList().also((p0) {
          p0.addAll([
            MetaNameTag(
              name: 'title',
              content: widget.title,
            ),
            MetaNameTag(
              name: 'description',
              content: widget.description,
            ),
            if (widget.author != null)
              MetaNameTag(
                name: 'author',
                content: widget.author!,
              ),
          ]);
        }),
        child: widget.child,
      ),
    );
  }
}

extension ScopeExt<T> on T {
  T also(void Function(T) block) {
    block(this);
    return this;
  }
}
