import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final String message;

  const Info({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.lightBlue.shade200,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          color: Colors.lightBlue[50]),
      padding: const EdgeInsets.all(8),
      child: Text(
        message,
        style: TextStyle(color: Colors.lightBlue[900], fontSize: 12),
      ),
    );
  }
}
