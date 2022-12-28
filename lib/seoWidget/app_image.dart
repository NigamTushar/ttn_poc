import 'package:flutter/material.dart';
import 'package:seo_service/html/seo_widget.dart';

class AppImage extends StatelessWidget {
  final String alt;
  final String src;

  final double? width;
  final double? height;

  const AppImage({
    super.key,
    required this.alt,
    required this.src,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Seo.image(
      alt: alt,
      src: src,
      child: Image.network(
        src,
        width: width,
        height: height,
      ),
    );
  }
}
