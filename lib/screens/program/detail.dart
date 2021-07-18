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
      body: Center(
          child: Column(
        children: [
          Container(
            height: 395,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey,
            ),
            child: Column(
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, top: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Match",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "of the day",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30, top: 45),
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13.0),
                            color: Colors.black,
                          ),
                          child: Icon(
                            Icons.notifications_none_rounded,
                            color: Colors.white60,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 55),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Image.asset(
                              match.img1,
                              height: 110,
                              width: 110,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              match.equipe1,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.red,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "19:30",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 26,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Old Trafford",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.red,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image.asset(
                              match.img2,
                              height: 46,
                              width: 46,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              match.equipe2,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.red,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
