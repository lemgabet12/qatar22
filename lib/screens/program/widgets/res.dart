import 'package:flutter/material.dart';

class Rest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Resultat Today",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.amber,
                size: 22,
              ),
            ],
          ),
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
                      "2'",
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
                        "Poland",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        child: Image.asset("assets/images/poland.png",
                            height: 38, width: 38),
                      ),
                      Text(
                        " 0:0 ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Image.asset("assets/images/qatar.png",
                            height: 33, width: 33),
                      ),
                      Text(
                        "Qatar",
                        style: TextStyle(
                          color: Colors.white,
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
                  color: Colors.white60,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "17:00",
                  style: TextStyle(
                    color: Colors.white38,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Brazil",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        child: Image.asset("assets/images/brazil.png",
                            height: 52, width: 52),
                      ),
                      Text(
                        " - ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Image.asset("assets/images/italia.png",
                            height: 33, width: 33),
                      ),
                      Text(
                        "Ilalia",
                        style: TextStyle(
                          color: Colors.white,
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
                  color: Colors.white60,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "18:30",
                      style: TextStyle(
                        color: Colors.white38,
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
                        "France",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        child: Image.asset("assets/images/france.png",
                            height: 45, width: 45),
                      ),
                      Text(
                        " - ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Image.asset(
                          "assets/images/espagne.png",
                          height: 33,
                          width: 33,
                        ),
                      ),
                      Text(
                        "Espagne",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "22:30",
                      style: TextStyle(
                        color: Colors.white38,
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
                        "Croitia",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        child: Image.asset("assets/images/croitia.png",
                            height: 33, width: 33),
                      ),
                      Text(
                        " - ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Image.asset(
                          "assets/images/arabicsaoudi.png",
                          height: 36,
                          width: 36,
                        ),
                      ),
                      Text(
                        "Arabic Saoudi",
                        style: TextStyle(
                          color: Colors.white,
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
                  color: Colors.white60,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
