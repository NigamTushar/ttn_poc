import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newers_world/drawer/screen/drawer_screen.dart';
import 'package:newers_world/tab_ui/routes/tab_router.dart';
import 'package:seo_service/html/seo_controller.dart';
import 'package:seo_service/html/tree/widget_tree.dart';
import 'main_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(TabApp());
}

class App extends StatelessWidget {
  App({super.key});

  final _router = MainRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: Theme.of(context).copyWith(
        scaffoldBackgroundColor: const Color(0xFFEEEEEE),
        textTheme: Theme.of(context)
            .textTheme
            .copyWith(
              headline5: const TextStyle(fontWeight: FontWeight.w600),
              headline6: const TextStyle(fontWeight: FontWeight.w600),
            )
            .apply(
              displayColor: Colors.black,
              bodyColor: Colors.black,
            ),
      ),
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
    );
  }
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _router = MainRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SeoController(
      enabled: true,
      tree: WidgetTree(context: context),
      child: ScreenUtilInit(
          designSize: ScreenUtil.defaultSize,
          builder: (BuildContext context, Widget? child) {
            return SizedBox(
              width: 500,
              child: MaterialApp.router(
                title: 'Flutter Demo',
                theme: ThemeData(
                  dividerColor: Colors.transparent,
                  primarySwatch: Colors.blueGrey,
                  textTheme: const TextTheme(
                    bodyText1: TextStyle(),
                    bodyText2: TextStyle(),
                  ).apply(
                    bodyColor: Colors.blueGrey,
                    displayColor: Colors.blueGrey,
                  ),
                ),
                // home: const DrawerScreen(),
                debugShowCheckedModeBanner: false,
                routerDelegate: _router.delegate(),
                routeInformationParser: _router.defaultRouteParser(),
              ),
            );
          }),
    );
  }
}

class TabApp extends StatelessWidget {
  TabApp({Key? key}) : super(key: key);
  final _router = TabRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SeoController(
      enabled: true,
      tree: WidgetTree(context: context),
      child: ScreenUtilInit(
          designSize: ScreenUtil.defaultSize,
          builder: (BuildContext context, Widget? child) {
            return SizedBox(
              width: 500,
              child: MaterialApp.router(
                title: 'Flutter Demo',
                theme: ThemeData(
                  dividerColor: Colors.transparent,
                  primarySwatch: Colors.blueGrey,
                  textTheme: const TextTheme(
                    bodyText1: TextStyle(),
                    bodyText2: TextStyle(),
                  ).apply(
                    bodyColor: Colors.blueGrey,
                    displayColor: Colors.blueGrey,
                  ),
                ),
                // home: const DrawerScreen(),
                debugShowCheckedModeBanner: false,
                routerDelegate: _router.delegate(),
                routeInformationParser: _router.defaultRouteParser(),
              ),
            );
          }),
    );
  }
}
