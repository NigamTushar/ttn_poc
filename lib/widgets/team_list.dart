import 'package:flutter/material.dart';

class TeamList extends StatelessWidget {
  const TeamList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
              backgroundColor: Colors.black,
              // child: Text('${index + 1}'),
              radius: 30.0,
            ),
      ],
    );
  }
}
