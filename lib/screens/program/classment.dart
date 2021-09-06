import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_list_view/group_list_view.dart';
import 'dart:math';

import 'package:qatar22/screens/home/home-screen.dart';

Map<String, List> _elements = {
  'Groupe A': ['Qatar', 'Argantina', 'Italia', 'Germany'],
  'Groupe B': ['Tunisia', 'France', 'Croitia', 'saoudi arabia'],
  'Groupe C': ['England', 'Espagnas', 'Belguim', 'Poland'],
  'Groupe D': ['Portogal', 'Wales', 'Brazil', 'Japon'],
};

class Classement extends StatelessWidget {
  Widget _itemBuilder(BuildContext context, IndexPath index) {
    String user = _elements.values.toList()[index.section][index.index];
    return InkWell(
        child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 40,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Center(
                child: Text(user.substring(0, 1).toUpperCase(),
                    style: TextStyle(
                        fontFamily: FontNameDefault,
                        fontSize: 22,
                        color: Colors.black))),
          ),
        ),
        Text(
          user,
          style: TextStyle(fontFamily: FontNameDefault, fontSize: 18),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GroupListView(
          sectionsCount: _elements.keys.toList().length,
          countOfItemInSection: (int section) {
            return _elements.values.toList()[section].length;
          },
          itemBuilder: _itemBuilder,
          groupHeaderBuilder: (BuildContext context, int section) {
            return Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                    color: Colors.red,
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        _elements.keys.toList()[section],
                        style: TextStyle(
                            fontFamily: FontNameDefault,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    )));
          },
          separatorBuilder: (context, index) => Divider(
            color: Colors.black,
            height: 1,
          ),
          sectionSeparatorBuilder: (context, section) => SizedBox(),
        ),
      ),
    );
  }
}
