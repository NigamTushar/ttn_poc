import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:newers_world/importantLinks/ImportantLinksHome.dart';
import 'package:newers_world/meetNewi/NewiHome.dart';
import 'package:newers_world/myTickets/my_tickets_home.dart';
import 'package:newers_world/newersActions/newers_actions_home.dart';
import 'package:newers_world/orgCharts/org_charts.dart';
import 'package:newers_world/profile/screen/my_profile.dart';
import 'package:newers_world/resume/resume_home.dart';
import 'package:newers_world/screens/coming_soon.dart';
import 'package:newers_world/whats_new/whats_new_home.dart';

import 'attendance/screen/attendance_home_screen.dart';
import 'drawer/screen/drawer_screen.dart';
import 'profile/screen/profile_home.dart';


part 'main_router.gr.dart';

@AdaptiveAutoRouter(
  // replaceInRouteName: 'Home,Route',
  routes: [
    AutoRoute(
      path: '/dashboard',
      page: DrawerScreen,
      initial: true,
    ),
    AutoRoute(
      path: '/attendance',
      page: AttendanceHome,
    ),
    AutoRoute(
      path: '/myProfile',
      page: MyProfile,
    ),
    AutoRoute(
      path: '/resume',
      page: ResumeHome,
    ),
    AutoRoute(
      path: '/whatsNew',
      page: WhatsNewHome,
    ),
    AutoRoute(
      path: '/meetNewi',
      page: NewiHome,
    ),
    AutoRoute(
      path: '/importantLinks',
      page: ImportantLinksHome,
    ),
    AutoRoute(
      path: '/myTickets',
      page: MyTicketsHome,
    ),
    AutoRoute(
      path: '/newersActions',
      page: NewersActionsHome,
    ),
    AutoRoute(
      path: '/orgCharts',
      page: OrgCharts,
    ),
    AutoRoute(
      path: '/profile/:id',
      page: ProfileHome,
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class MainRouter extends _$MainRouter {}
