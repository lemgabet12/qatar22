import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qatar22/screens/account/account-screen.dart';
import 'package:qatar22/screens/fan/fan-screen.dart';
import 'package:qatar22/screens/feed/feed-screen.dart';
import 'package:qatar22/screens/infos/infos-screen.dart';
import 'package:qatar22/screens/program/program-screen.dart';

class CustumBottomNavigationBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CustumBottomNavigationBar();
}

class _CustumBottomNavigationBar extends State<CustumBottomNavigationBar> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    FeedScreen(),
    ProgramScreen(),
    InfosScreen(),
    FanScreen(),
    AccountScreen()
  ];

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news_solid),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.sportscourt_fill),
            label: 'Program',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.info_circle_fill),
            label: 'Infos',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.star_lefthalf_fill),
            label: 'Fan',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Account',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red.shade900,
        onTap: onTabTapped,
        unselectedItemColor: Colors.grey.shade500,
        backgroundColor: Colors.white,
      ),
    );
  }
}
