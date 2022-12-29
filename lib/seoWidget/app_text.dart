import 'package:flutter/material.dart';
import 'package:seo_service/html/seo_widget.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final HeadingText? headingElement;

  const AppText({
    super.key,
    required this.text,
    required this.style,
    this.headingElement = HeadingText.h1,
  });

  @override
  Widget build(BuildContext context) {
    return headingElement == HeadingText.h1
        ? Seo.text(
            text: text,
            child: Text(
              text,
              style: style,
            ),
          )
        : Seo.textH2(
            text: text,
            child: Text(
              text,
              style: style,
            ),
          );
  }
}

enum HeadingText { h1, h2 }
