import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:qatar22/screens/infos/DataOfList.dart';
import 'package:qatar22/screens/infos/info-detail/info-details.dart';

import 'listOfData.dart';

class InfosScreen extends StatefulWidget {
  @override
  _InfosScreenState createState() => _InfosScreenState();
}

class _InfosScreenState extends State<InfosScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 60),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                    topLeft: Radius.circular(70),
                  ),
                ),
                width: double.infinity,
              ),
              OrientationBuilder(builder: (context, orientation) {
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          orientation == Orientation.portrait ? 2 : 3),
                  itemBuilder: (context, index) => Container(
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Container(
                          child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InfoDetails()));
                        },
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 30),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10.0, // soften the shadow
                                    spreadRadius: 1.0, //extend the shadow
                                    offset: Offset(
                                      14.0, // Move to right 10  horizontally
                                      19.0, // Move to bottom 10 Vertically
                                    ),
                                  ),
                                ],
                                color:
                                    index.isEven ? Colors.white : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                child: Stack(
                                  children: [],
                                ),
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Container(
                                  height: 120,
                                  width: 120,
                                  child: Hero(
                                      tag: listdata[index].id,
                                      child: Image.asset(listdata[index].img))),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    child: Row(
                                      children: [
                                        Text(
                                          listdata[index].name,
                                          style: TextStyle(
                                            color: index.isEven
                                                ? Colors.black
                                                : Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
//
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                    ),
                  ),
                  itemCount: listdata.length,
                );
              }),
            ],
          ),
        )
      ],
    );
  }

  Container ListName(BuildContext context, name) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: MediaQuery.of(context).size.height * 8 / 100,
      child: ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: selectedIndex == index ? Colors.white : Colors.transparent,
            ),
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              listdata[index].name.toString(),
              style: TextStyle(
                fontWeight: selectedIndex == index
                    ? FontWeight.bold
                    : FontWeight.normal,
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
        ),
        scrollDirection: Axis.horizontal,
        itemCount: listdata.length,
      ),
    );
  }
}
