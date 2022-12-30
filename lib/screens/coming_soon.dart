import 'package:flutter/material.dart';
import 'package:newers_world/seoWidget/app_meta.dart';
import 'package:newers_world/seoWidget/app_text.dart';
import 'package:newers_world/widgets/container_screen.dart';
import 'package:seo_service/html/seo_controller.dart';
import 'package:seo_service/html/tree/widget_tree.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key, required this.title, required this.description, required this.author}) : super(key: key);
  final String title;
  final String description;
  final String author;
  @override
  Widget build(BuildContext context) {
    return  ContainerScreen(child: Scaffold(body: SeoController(
        tree: WidgetTree(context: context),
        child: AppMeta(
            title: title,
            description:
            description,
            author: author,
            child: Center(child:  AppText(text: 'Coming Soon', style: TextStyle(fontSize: 50),),))),));
  }
}