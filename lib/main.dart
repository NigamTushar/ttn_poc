import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newers_world/drawer/screen/drawer_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // if(Platform.isMacOS || Platform.isWindows) {
  //   setWindowMaxSize(const Size(1024, 768));
  //   setWindowMinSize(const Size(512, 384));
  // }
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: ScreenUtil.defaultSize,
        builder: (BuildContext context, Widget? child) {
          return SizedBox(
            width: 500,
            child: MaterialApp(
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
              home: const DrawerScreen(),
              debugShowCheckedModeBanner: false,
            ),
          );
        });
  }
}
