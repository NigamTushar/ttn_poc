import 'package:flutter/material.dart';

class StyleUtils {
  static BoxDecoration cardDecoration = BoxDecoration(
      color: Colors.white, border: Border.all(color: Colors.grey, width: 1));
  static TextStyle dashboardCardHeaderTextStyle = const TextStyle(
      color: Colors.black54, fontSize: 16, fontWeight: FontWeight.bold);

  static BoxDecoration cardShadowDecoration = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.grey.shade400,
        blurRadius: 5,
        offset: const Offset(4, 8),
      )
    ],
    border: Border.all(color: Colors.grey.shade300),
    color: Colors.white,
  );

  static const TextStyle textStyleBoldDark = TextStyle(
      color: Color(0xC7151516), fontSize: 14, fontWeight: FontWeight.bold);
  static const TextStyle textStyleNormal = TextStyle(
      color: Color(0xC2151516), fontSize: 14, fontWeight: FontWeight.normal);
  static const TextStyle textStyleNormalDark = TextStyle(
      color: Color(0xC2151516), fontSize: 14, fontWeight: FontWeight.normal);
}
