import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:newers_world/profile/screen/my_profile.dart';

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
      path: '/profile/:id',
      page: ProfileHome,
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class MainRouter extends _$MainRouter {}
