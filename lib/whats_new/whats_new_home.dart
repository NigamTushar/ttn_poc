import 'package:flutter/material.dart';
import 'package:newers_world/screens/coming_soon.dart';

class WhatsNewHome extends StatelessWidget {
  const WhatsNewHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ComingSoon(title: 'Whats new', description: 'New Feature, Upcoming Feature, All Feature', author: 'To The New');
  }
}
