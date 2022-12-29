import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:rxdart/rxdart.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'seo_html.dart';
import 'widget/seo_tag.dart';
import 'widget/seo_tree.dart';

class SeoController extends StatefulWidget {
  final bool enabled;

  final SeoTree tree;
  final Widget child;

  const SeoController({
    super.key,
    this.enabled = true,
    required this.tree,
    required this.child,
  });

  @override
  State<SeoController> createState() => _SeoControllerState();

  static Widget process({
    required BuildContext context,
    required SeoTag tag,
    required Widget child,
  }) {
    return context
        .dependOnInheritedWidgetOfExactType<_InheritedSeoTreeWidget>()!
        .tree
        .process(tag, child);
  }
}

class _SeoControllerState extends State<SeoController> {
  StreamSubscription? _subscription;
  int? _headHash;
  int? _bodyHash;

  @override
  void initState() {
    super.initState();
    _subscribe();
  }

  @override
  void didUpdateWidget(covariant SeoController oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.enabled != widget.enabled) {
      _subscribe();
    }
  }

  void _subscribe() {
    _subscription?.cancel();
    _subscription = null;

    if (widget.enabled) {
      _subscription = widget.tree
          .changes()
          .debounceTime(const Duration(milliseconds: 250))
          .listen((_) => _update());
    }
  }

  void _update() async {
    if (!mounted) return;

    if (SchedulerBinding.instance.schedulerPhase != SchedulerPhase.idle) {
      await SchedulerBinding.instance.endOfFrame;
      if (!mounted) return;
    }

    final html = widget.tree.traverse()?.toHtml();
    if (html != null) {
      _updateHead(html);
      _updateBody(html);
    }
  }

  void _updateHead(SeoHtml html) {
    final head = document.head;
    if (head == null) return;

    final hash = html.head.hashCode;
    if (_headHash == hash) return;
    _headHash = hash;

    head.children
        .where((element) => element.attributes.containsKey('flt-seo'))
        .forEach((element) => element.remove());

    head.insertAdjacentHtml(
      'beforeEnd',
      html.head,
      validator: NodeValidatorBuilder()
        ..allowHtml5(uriPolicy: _AllowAllUriPolicy())
        ..allowCustomElement('title', attributes: ['flt-seo'])
        ..allowCustomElement(
          'meta',
          attributes: ['name', 'property', 'content', 'flt-seo'],
        ),
    );
  }

  void _resetHead({bool update = false}) {
    if (!mounted) return;
    final head = document.head;
    if (head == null) return;
    head.children
        .where((element) => element.attributes.containsKey('flt-seo'))
        .forEach((element) => element.remove());
    if (update) {
      final html = widget.tree.traverse()?.toHtml();
      if (html != null) {
        head.insertAdjacentHtml(
          'beforeEnd',
          html.head,
          validator: NodeValidatorBuilder()
            ..allowHtml5(uriPolicy: _AllowAllUriPolicy())
            ..allowCustomElement('title', attributes: [])
            ..allowCustomElement(
              'meta',
              attributes: ['name', 'property', 'content', 'flt-seo'],
            ),
        );
      }
    }
  }

  void _updateBody(SeoHtml html) {
    final body = document.body;
    if (body == null) return;
    final hash = html.body.hashCode;
    if (_bodyHash == hash) return;
    _bodyHash = hash;

    body.children
        .where((element) => element.localName == 'flt-seo')
        .forEach((element) => element.remove());

    body.insertAdjacentHtml(
      'afterBegin',
      '<flt-seo>${html.body}</flt-seo>',
      validator: NodeValidatorBuilder()
        ..allowHtml5(uriPolicy: _AllowAllUriPolicy())
        ..allowCustomElement('flt-seo')
        ..allowCustomElement('noscript')
        ..allowCustomElement('h2',attributes: ['style'])
        ..allowCustomElement('h1', attributes: ['style']),
    );
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: UniqueKey(),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.0) {
          _resetHead(update: true);
        } else {
          _resetHead();
        }
      },
      child: _InheritedSeoTreeWidget(
        tree: widget.tree,
        child: widget.child,
      ),
    );
  }

  @override
  void dispose() {
    _resetHead();
    _subscription?.cancel();
    _subscription = null;
    super.dispose();
  }
}

class _AllowAllUriPolicy implements UriPolicy {
  @override
  bool allowsUri(String uri) => true;
}

class _InheritedSeoTreeWidget extends InheritedWidget {
  final SeoTree tree;

  const _InheritedSeoTreeWidget({
    required this.tree,
    required super.child,
  });

  @override
  bool updateShouldNotify(_InheritedSeoTreeWidget old) => true;
}
