import 'package:flutter/material.dart';
import 'package:seo_service/seo.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextTagStyle? tagStyle;

  final TextStyle? style;
  final TextAlign? textAlign;

  const AppText({
    super.key,
    required this.text,
    this.tagStyle,
    required this.style,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Seo.text(
      text: text,
      style: tagStyle ?? TextTagStyle.p,
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: style,
        textAlign: textAlign,
      ),
    );
  }
}
