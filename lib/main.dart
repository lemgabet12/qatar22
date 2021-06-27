import 'package:flutter/material.dart';
import 'package:qatar22/screens/feed/feed-screen.dart';
import 'package:qatar22/screens/home/home-screen.dart';
import 'package:qatar22/screens/program/program-screen.dart';
import 'package:qatar22/screens/splash/SplashScreen.dart';
import 'shared/Constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qatar22',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          accentColor: Colors.black,
          indicatorColor: Colors.black,
          highlightColor: Colors.black,
          bottomAppBarColor: Colors.black,
          primaryColor: Color(0xFFffffff),
          primaryColorDark: Color(0xffffff)),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
        HOME_SCREEN: (BuildContext context) => HomeScreen()
      },
    );
  }
}
