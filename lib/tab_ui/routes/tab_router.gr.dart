// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'tab_router.dart';

class _$TabRouter extends RootStackRouter {
  _$TabRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    DrawerScreenRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const DrawerScreen(),
      );
    }
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
