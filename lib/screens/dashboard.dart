import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:newers_world/dashboard_screens/dashboard_home_screen.dart';
import 'package:newers_world/helper/breakpoint.dart';
import 'package:newers_world/widgets/dashboard_info_card.dart';
import 'package:newers_world/widgets/stakeholder_list.dart';

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
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
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
                  // style: TextStyle(color: Colors.blueGrey),
                ),
                backgroundColor: Colors.white70,
                elevation: 0,
              ),
              drawer: appDrawer(),
              body: SingleChildScrollView(
                controller: ScrollController(),
                child: Wrap(
                  children: [
                    PageHeader(
                      width: _screenSize.width,
                    ),
                    Container(
                      color: Colors.white,
                      margin: const EdgeInsets.only(top: 20,left: 20),
                      padding: const EdgeInsets.all(20.0),
                      child: const DashboardHomeScreen(),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20,left: 20),
                      color: Colors.white,
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 300.h,
                          constraints: BoxConstraints(maxWidth: 300,maxHeight: 300),
                          child: const StakeholdersList()),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20,left: 20),
                      color: Colors.white,
                      padding: const EdgeInsets.all(20.0),
                      child: const DashboardHomeScreen(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
