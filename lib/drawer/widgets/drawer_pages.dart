import 'package:flutter/material.dart';
import 'package:newers_world/dashboard/screen/dashboard_list_view.dart';
import 'package:newers_world/drawer/utils/drawer_const.dart';

class DrawerPages extends StatelessWidget {
  final String pageName;

  const  DrawerPages({Key? key, required this.pageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (pageName) {
      case DrawerConst.myDashBoardMenu:
        return const DashboardListView();
      case DrawerConst.myProfile:
        return const SizedBox();
    }
    return const DashboardListView();
  }
}