import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/page_header.dart';
import '../widgets/user_detail_card.dart';

class DashboardHome extends StatefulWidget {
  const DashboardHome({Key? key}) : super(key: key);

  @override
  State<DashboardHome> createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  var _unHideDrawer = true;

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    // TODO - min and max sizing as in case of desktop applications it is needed.
    return Row(
      children: [
        if(_screenSize.width > 760 && _unHideDrawer)appDrawer(),
        Expanded(
          child: Scaffold(
            backgroundColor: Colors.grey[300],
            appBar: AppBar(
              leading: Builder(builder: (BuildContext context) {
                return IconButton(
                  onPressed: () {
                    if(_screenSize.width > 760) {
                      setState(() {
                        _unHideDrawer = !_unHideDrawer;
                        print('Clicked the drawer ' + _unHideDrawer.toString());
                      });
                    } else {
                      Scaffold.of(context).openDrawer();
                    }
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
            body: ListView(
              children: const [
                PageHeader(),
                UserDetailCard()
              ],
            ),
          ),
        ),
      ],
    );
  }
}