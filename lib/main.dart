
import 'package:flutter/material.dart';
import 'package:newers_world/screens/dashboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // if(Platform.isMacOS || Platform.isWindows) {
  //   setWindowMaxSize(const Size(1024, 768));
  //   setWindowMinSize(const Size(512, 384));
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          textTheme: const TextTheme(
            bodyText1: TextStyle(),
            bodyText2: TextStyle(),
          ).apply(
            bodyColor: Colors.blueGrey,
            displayColor: Colors.blueGrey,
          ),
        ),
        home: const DashboardHome(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
