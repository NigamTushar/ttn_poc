import 'package:flutter/material.dart';
import 'package:seo_service/html/seo_widget.dart';

class AppImage extends StatelessWidget {
  final String alt;
  final String src;

  final double? width;
  final double? height;
  final double? radius;
  final bool? isCircular;

  const AppImage({
    super.key,
    required this.alt,
    required this.src,
    this.width,
    this.height,
    this.radius,
    this.isCircular = true,
  });

  @override
  Widget build(BuildContext context) {
    return Seo.image(
      alt: alt,
      src: src,
      child: isCircular == true
          ? CircleAvatar(
              radius: radius,
              backgroundImage: NetworkImage(
                src,
              ),
            )
          : Image.network(
              src,
              width: width ?? 100,
              height: height ?? 100,
            ),
    );
  }
}
