import 'package:flutter/material.dart';
import 'package:qatar22/screens/program/match.dart';
import 'package:qatar22/shared/match.dart';

class MyDetailPage extends StatefulWidget {
  MatchModel match;

  MyDetailPage({required this.match});

  @override
  _MyDetailPageState createState() => _MyDetailPageState(match);
}

class _MyDetailPageState extends State<MyDetailPage> {
  late MatchModel match;

  _MyDetailPageState(MatchModel match) {
    this.match = match;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(match.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Hero(
            transitionOnUserGestures: true,
            tag: match,
            child: Transform.scale(
              scale: 2.0,
              child: Image.asset(match.img),
            ),
          ),
          Card(
              elevation: 8,
              margin: EdgeInsets.all(16),
              child: Container(
                padding: EdgeInsets.all(16),
                child: Text(match.body),
              )),
        ],
      )),
    );
  }
}
