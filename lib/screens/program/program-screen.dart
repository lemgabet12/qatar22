import 'package:flutter/material.dart';
import 'package:qatar22/screens/program/classment.dart';
import 'package:qatar22/screens/program/resultat.dart';
import 'package:qatar22/screens/program/match.dart';

class ProgramScreen extends StatelessWidget {
  Color mainColor = Color(0xFF232343);
  Color secColor = Color(0xFF353666);
  Color tileColor = Color(0xFF5355a2);
  Color boxColor = Color(0xFFBCBEDC);
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        backgroundColor: mainColor,
        appBar: new AppBar(
          flexibleSpace: new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              new TabBar(
                tabs: [
                  new Tab(text: "Match"),
                  new Tab(text: "Classement"),
                  new Tab(text: "Resultat"),
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Match(),
            Classement(),
            Resultat(),
          ],
        ),
      ),
    );
  }
}
