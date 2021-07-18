import 'package:flutter/material.dart';
import 'package:qatar22/screens/program/widgets/PremierLeague.dart';
import 'package:qatar22/shared/match.dart';

import 'detail.dart';

class Match extends StatefulWidget {
  @override
  _MatchState createState() => _MatchState();
}

class _MatchState extends State<Match> {
  List<MatchModel> items = [];

  _MatchState() {
    items.add(new MatchModel("", "", "images/brazil.png", "Brazil", "1:0",
        "Qatar", "images/qatar.png"));
    items.add(new MatchModel("", "Recipient of the Super-Soldier serum",
        "images/wales.png", "Wales", "1:0", "Tunisie", "images/tunisie.png"));
    items.add(new MatchModel(
        "Thor",
        "The son of Odin uses his mighty abil",
        "images/poland.png",
        "Poland",
        "1:0",
        "Portogal",
        "images/portogal.png"));
    items.add(new MatchModel(
        "",
        "Dr. Bruce Banner lives a life caught between the soft",
        "images/japon.png",
        "Japon",
        "1:0",
        "germany",
        "images/germany.png"));
    items.add(new MatchModel(
        "",
        "Despite super spy Natasha Romanoff’s checkered past, she’s become ",
        "images/espagna.png",
        "Espagna",
        "1:0",
        "France",
        "images/france.png"));
    items.add(new MatchModel(
        "",
        "Despite super spy Natasha Romanoff’s checkered past, she’s become ",
        "images/italia.png",
        "italia",
        "1:0",
        "England",
        "images/england.png"));
    items.add(new MatchModel(
        "",
        "Despite super spy Natasha Romanoff’s checkered past, she’s become ",
        "images/argantine.png",
        "argantina",
        "1:0",
        "arabic saoudi",
        "images/arabic.png"));
    items.add(new MatchModel(
        "",
        "Despite super spy Natasha Romanoff’s checkered past, she’s become ",
        "images/belguim.png",
        "belguim",
        "1:0",
        "croitia",
        "images/croitia.png"));
  }

  Widget SuperHeroCell(BuildContext ctx, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MyDetailPage(match: items[index])));
      },
      child: Card(
          margin: EdgeInsets.all(8),
          elevation: 4.0,
          child: Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [PremierLeague(match: items[index])],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) => SuperHeroCell(context, index),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
