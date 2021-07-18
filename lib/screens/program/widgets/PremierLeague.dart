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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        match.equipe1,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Image.asset(
                        match.img1,
                        height: 46,
                        width: 46,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        match.sccore,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
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
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
