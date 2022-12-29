import 'package:flutter/material.dart';
import 'package:newers_world/seoWidget/app_text.dart';

class PageHeader extends StatelessWidget {
  final double width;
  final String title;
  final String subtitle;
  const PageHeader({
    Key? key,
    required this.width,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      height: 80,
      width: width,
      color: Colors.white,
      child: Column(
        children:  [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0,),
            child: AppText(
              text: title,
              style: const TextStyle(
                // color: Colors.blueGrey,
                fontWeight: FontWeight.w300,
                fontSize: 26,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0,),
            child: Text(subtitle),
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
