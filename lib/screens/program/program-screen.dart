import 'package:flutter/material.dart';
import 'package:qatar22/screens/program/classment.dart';
import 'package:qatar22/screens/program/resultat.dart';
import 'package:qatar22/screens/program/match.dart';

class ProgramScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              unselectedLabelColor: Colors.redAccent,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.redAccent),
              tabs: [
                Tab(
                  text: 'Match',
                ),
                Tab(
                  text: 'Classement',
                ),
                Tab(
                  text: 'Resultat',
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
      ),
    );
  }
}
