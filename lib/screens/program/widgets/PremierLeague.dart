import 'package:flutter/material.dart';
import 'package:qatar22/shared/match.dart';

class PremierLeague extends StatefulWidget {
  MatchModel match;

  PremierLeague({required this.match});

  @override
  _MyDetailPageState createState() => _MyDetailPageState(match);
}

class _MyDetailPageState extends State<PremierLeague> {
  late MatchModel match;

  _MyDetailPageState(MatchModel match) {
    this.match = match;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "24'",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Wolves",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: Image.asset("assets/images/wolves.png",
                            height: 38, width: 38),
                      ),
                      Text(
                        " 0:1 ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Image.asset("assets/images/wolves.png",
                            height: 33, width: 33),
                      ),
                      Text(
                        "wolves",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.notifications_none_rounded,
                  size: 26,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
