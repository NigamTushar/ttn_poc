import 'package:flutter/material.dart';
import 'package:newers_world/screens/coming_soon.dart';

class ResumeHome extends StatelessWidget {
  const ResumeHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ComingSoon(title: 'Resume Home', description: 'Resume, My Resume, My Info, My Experience', author: 'To The New');
  }
}
