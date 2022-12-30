import 'package:flutter/material.dart';
import 'package:newers_world/attendance/screen/attendance_home_screen.dart';
import 'package:newers_world/dashboard/screen/dashboard_list_view.dart';
import 'package:newers_world/drawer/utils/drawer_const.dart';
import 'package:newers_world/profile/screen/my_profile.dart';

const dashboardProfileName = 'Rahul Sharma';
const profileDesignation = 'Senior Software Engineer';
const dashboardProfileEmail = 'rahulsharma@tothenew.com';
const dashboardProfileImage = 'https://picsum.photos/250?image=2';

class DrawerPages extends StatelessWidget {
  final String pageName;

  const DrawerPages({Key? key, required this.pageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (pageName) {
      case DrawerConst.myDashBoardMenu:
        return const DashboardListView();
      case DrawerConst.myProfile:
        return const MyProfile();
      case DrawerConst.attendanceMenu:
        return const AttendanceHome();
    }
    return const DashboardListView();
  }
}
