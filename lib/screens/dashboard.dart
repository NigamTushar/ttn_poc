import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/user_detail_card.dart';

class DashboardHome extends StatelessWidget {
  const DashboardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.green,
            ),
          );
        }),
        title: const Text(
          'App bar',
          style: TextStyle(color: Colors.blueGrey),
        ),
        backgroundColor: Colors.white70,
        elevation: 0,
      ),
      drawer: appDrawer(),
      body: Container(
        color: Colors.redAccent,
      ),
    );
  }
}
