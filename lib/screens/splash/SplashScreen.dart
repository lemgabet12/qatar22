import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qatar22/shared/Constant.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  void startTimer() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(HOME_SCREEN);
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
        backgroundColor: Colors.white,
        body: Center(
            child: Image.asset('assets/images/qatar1.jpg',
                width: MediaQuery.of(context).size.width * .8)));
  }
}
