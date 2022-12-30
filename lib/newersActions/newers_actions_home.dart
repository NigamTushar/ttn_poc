import 'package:flutter/material.dart';
import 'package:newers_world/screens/coming_soon.dart';

class NewersActionsHome extends StatelessWidget {
  const NewersActionsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ComingSoon(title: 'Newers action home', description: 'Newers action home, Home, Action Item, Planned Item', author: 'To The New');
  }
}
