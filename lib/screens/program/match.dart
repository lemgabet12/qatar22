import 'package:flutter/material.dart';
import 'package:qatar22/screens/program/previous/previous_match.dart';

class Match extends StatefulWidget {
  @override
  _MatchState createState() => _MatchState();
}

class _MatchState extends State<Match> {
  var _pageState = 0;

  void updatePage(int page, String title) {
    setState(() {
      _pageState = page;
    });
  }

  Widget body() {
    switch (_pageState) {
      default:
        return PreviousMatch();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
      drawer: Drawer(
          child: Column(
        children: <Widget>[],
      )),
    );
  }
}
