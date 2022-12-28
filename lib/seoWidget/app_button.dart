import 'package:flutter/material.dart';
import 'package:seo_service/html/seo_widget.dart';

class AppButton extends StatelessWidget {
  final String text;
  // final ButtonStyle? style;

  const AppButton({
    super.key,
    required this.text,
    //required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Seo.button(
      text: text,
      child: ElevatedButton(
        // style: style,
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}
