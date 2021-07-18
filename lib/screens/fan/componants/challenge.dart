import 'package:flutter/material.dart';
import 'package:qatar22/screens/fan/componants/quzz_home.dart';

class Challenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Column(children: <Widget>[
        Container(
          alignment: Alignment.center, // use aligment

          child: Image.asset('assets/images/winme.jpeg',
              height: 350, width: 350, fit: BoxFit.cover),
        ),
        Container(
          child: FlatButton(
            child: Text(
              'Start Her',
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Quizzler()),
              );
            },
          ),
        ),
      ]))),
    );
  }
}
