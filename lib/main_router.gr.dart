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
    ProfileHomeRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const ProfileHome(),
      );
    },
    AttendanceHomeRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const AttendanceHome(),
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
          ProfileHomeRoute.name,
          path: '/profile',
        ),
        RouteConfig(
          AttendanceHomeRoute.name,
          path: '/attendance',
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
/// [ProfileHome]
class ProfileHomeRoute extends PageRouteInfo<void> {
  const ProfileHomeRoute()
      : super(
          ProfileHomeRoute.name,
          path: '/profile',
        );

  static const String name = 'ProfileHomeRoute';
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
