import 'package:flutter/material.dart';
import 'package:qatar22/screens/program/widgets/LaLiga.dart';
import 'package:qatar22/screens/program/widgets/PremierLeague.dart';
import 'package:qatar22/screens/program/widgets/UEFA.dart';

class Match extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: 2000,
            child: TabBarView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      PremierLeague(),
                      LaLiga(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      PremierLeague(),
                      LaLiga(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      PremierLeague(),
                      LaLiga(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      PremierLeague(),
                      LaLiga(),
                      UEFA(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      PremierLeague(),
                      LaLiga(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      PremierLeague(),
                      LaLiga(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
