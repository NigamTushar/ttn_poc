import 'package:flutter/material.dart';
import 'package:newers_world/seoWidget/app_head.dart';
import 'package:newers_world/seoWidget/app_text.dart';
import 'package:newers_world/widgets/container_screen.dart';
import 'package:seo_service/seo.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon(
      {Key? key,
      required this.title,
      required this.description,
      required this.author})
      : super(key: key);
  final String title;
  final String description;
  final String author;

  @override
  Widget build(BuildContext context) {
    return ContainerScreen(
      child: AppHead(
        title: title,
        description: description,
        author: author,
        child: const Center(
          child: AppText(
            text: 'Coming Soon',
            tagStyle: TextTagStyle.h1,
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
