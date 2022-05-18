import 'package:flutter/material.dart';
import 'package:newers_world/widgets/dashboard_info_card.dart';

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
        if (_screenSize.width > 760 && _unHideDrawer) appDrawer(),
        Expanded(
          child: Scaffold(
            backgroundColor: Colors.grey[300],
            appBar: AppBar(
              leading: Builder(builder: (BuildContext context) {
                return IconButton(
                  onPressed: () {
                    if (_screenSize.width > 760) {
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

                // TODO:- Make a check in vertical mode the hieght will be 445 and in
                // horizontal mode[Normal], it will be 300
                // This can be done using sizing checks
                UserDetailCard(),

                // Stakeholder card
                DashboardInfoCard(
                  boxTitle: 'My Stakeholders',
                  cardType: CardType.stakeholder,
                ),

                // To Do List Card
                DashboardInfoCard(
                  boxTitle: 'My To-Do List',
                  cardType: CardType.toDo,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
