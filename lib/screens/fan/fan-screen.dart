import 'package:flutter/material.dart';
import 'package:qatar22/screens/fan/componants/challenge.dart';
import 'package:qatar22/screens/fan/componants/votes.dart';

class FanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: new AppBar(
          flexibleSpace: new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              new TabBar(
                indicatorColor: Colors.redAccent,
                tabs: [
                  new Tab(text: "Vote"),
                  new Tab(text: "Challenge"),
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Vote(),
            Challenge(),
          ],
        ),
      ),
    );
  }
}
