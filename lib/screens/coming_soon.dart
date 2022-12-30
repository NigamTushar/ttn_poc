import 'package:flutter/material.dart';
import 'package:newers_world/widgets/container_screen.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ContainerScreen(child: Scaffold(body: Center(child: const Text('Coming Soon', style: TextStyle(fontSize: 50),),),));
  }
}