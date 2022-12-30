// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'main_router.dart';

class _$MainRouter extends RootStackRouter {
  _$MainRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    DrawerScreenRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const DrawerScreen(),
      );
    },
    AttendanceHomeRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const AttendanceHome(),
      );
    },
    MyProfileRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const MyProfile(),
      );
    },
    ResumeHomeRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const ResumeHome(),
      );
    },
    WhatsNewHomeRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const WhatsNewHome(),
      );
    },
    NewiHomeRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const NewiHome(),
      );
    },
    ImportantLinksHomeRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const ImportantLinksHome(),
      );
    },
    MyTicketsHomeRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const MyTicketsHome(),
      );
    },
    NewersActionsHomeRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const NewersActionsHome(),
      );
    },
    OrgChartsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const OrgCharts(),
      );
    },
    ProfileHomeRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProfileHomeRouteArgs>(
          orElse: () => ProfileHomeRouteArgs(id: pathParams.getInt('id')));
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: ProfileHome(
          key: args.key,
          id: args.id,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/dashboard',
          fullMatch: true,
        ),
        RouteConfig(
          DrawerScreenRoute.name,
          path: '/dashboard',
        ),
        RouteConfig(
          AttendanceHomeRoute.name,
          path: '/attendance',
        ),
        RouteConfig(
          MyProfileRoute.name,
          path: '/myProfile',
        ),
        RouteConfig(
          ResumeHomeRoute.name,
          path: '/resume',
        ),
        RouteConfig(
          WhatsNewHomeRoute.name,
          path: '/whatsNew',
        ),
        RouteConfig(
          NewiHomeRoute.name,
          path: '/meetNewi',
        ),
        RouteConfig(
          ImportantLinksHomeRoute.name,
          path: '/importantLinks',
        ),
        RouteConfig(
          MyTicketsHomeRoute.name,
          path: '/myTickets',
        ),
        RouteConfig(
          NewersActionsHomeRoute.name,
          path: '/newersActions',
        ),
        RouteConfig(
          OrgChartsRoute.name,
          path: '/orgCharts',
        ),
        RouteConfig(
          ProfileHomeRoute.name,
          path: '/profile/:id',
        ),
        RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [DrawerScreen]
class DrawerScreenRoute extends PageRouteInfo<void> {
  const DrawerScreenRoute()
      : super(
          DrawerScreenRoute.name,
          path: '/dashboard',
        );

  static const String name = 'DrawerScreenRoute';
}

/// generated route for
/// [AttendanceHome]
class AttendanceHomeRoute extends PageRouteInfo<void> {
  const AttendanceHomeRoute()
      : super(
          AttendanceHomeRoute.name,
          path: '/attendance',
        );

  static const String name = 'AttendanceHomeRoute';
}

/// generated route for
/// [MyProfile]
class MyProfileRoute extends PageRouteInfo<void> {
  const MyProfileRoute()
      : super(
          MyProfileRoute.name,
          path: '/myProfile',
        );

  static const String name = 'MyProfileRoute';
}

/// generated route for
/// [ResumeHome]
class ResumeHomeRoute extends PageRouteInfo<void> {
  const ResumeHomeRoute()
      : super(
          ResumeHomeRoute.name,
          path: '/resume',
        );

  static const String name = 'ResumeHomeRoute';
}

/// generated route for
/// [WhatsNewHome]
class WhatsNewHomeRoute extends PageRouteInfo<void> {
  const WhatsNewHomeRoute()
      : super(
          WhatsNewHomeRoute.name,
          path: '/whatsNew',
        );

  static const String name = 'WhatsNewHomeRoute';
}

/// generated route for
/// [NewiHome]
class NewiHomeRoute extends PageRouteInfo<void> {
  const NewiHomeRoute()
      : super(
          NewiHomeRoute.name,
          path: '/meetNewi',
        );

  static const String name = 'NewiHomeRoute';
}

/// generated route for
/// [ImportantLinksHome]
class ImportantLinksHomeRoute extends PageRouteInfo<void> {
  const ImportantLinksHomeRoute()
      : super(
          ImportantLinksHomeRoute.name,
          path: '/importantLinks',
        );

  static const String name = 'ImportantLinksHomeRoute';
}

/// generated route for
/// [MyTicketsHome]
class MyTicketsHomeRoute extends PageRouteInfo<void> {
  const MyTicketsHomeRoute()
      : super(
          MyTicketsHomeRoute.name,
          path: '/myTickets',
        );

  static const String name = 'MyTicketsHomeRoute';
}

/// generated route for
/// [NewersActionsHome]
class NewersActionsHomeRoute extends PageRouteInfo<void> {
  const NewersActionsHomeRoute()
      : super(
          NewersActionsHomeRoute.name,
          path: '/newersActions',
        );

  static const String name = 'NewersActionsHomeRoute';
}

/// generated route for
/// [OrgCharts]
class OrgChartsRoute extends PageRouteInfo<void> {
  const OrgChartsRoute()
      : super(
          OrgChartsRoute.name,
          path: '/orgCharts',
        );

  static const String name = 'OrgChartsRoute';
}

/// generated route for
/// [ProfileHome]
class ProfileHomeRoute extends PageRouteInfo<ProfileHomeRouteArgs> {
  ProfileHomeRoute({
    Key? key,
    required int id,
  }) : super(
          ProfileHomeRoute.name,
          path: '/profile/:id',
          args: ProfileHomeRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'ProfileHomeRoute';
}

class ProfileHomeRouteArgs {
  const ProfileHomeRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'ProfileHomeRouteArgs{key: $key, id: $id}';
  }
}
