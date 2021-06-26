import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qatar22/shared/Constant.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  void startTimer() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(FEED_SCREEN);
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Image(
      image: AssetImage('assets/images/qatar22.jpg'),
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    ));
  }
}
