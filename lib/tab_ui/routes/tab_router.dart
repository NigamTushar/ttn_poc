import 'package:auto_route/auto_route.dart';
import 'package:newers_world/drawer/screen/drawer_screen.dart';



part 'tab_router.gr.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(
      path: '/dashboard',
      page: DrawerScreen,
      initial: true,
    ),

    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class TabRouter extends _$TabRouter {}
