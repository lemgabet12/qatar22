import 'package:flutter/material.dart';
import 'package:qatar22/screens/components/bottom-navigation-bar.dart';
import 'package:qatar22/screens/account/account-screen.dart';
import 'package:qatar22/screens/components/drawer.dart';
import 'package:qatar22/screens/components/my-app-bar.dart';
import 'package:qatar22/screens/fan/fan-screen.dart';
import 'package:qatar22/screens/feed/feed-screen.dart';
import 'package:qatar22/screens/infos/infos-screen.dart';
import 'package:qatar22/screens/program/program-screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    FeedScreen(),
    ProgramScreen(),
    InfosScreen(),
    FanScreen(),
    AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Myappbar(),
      body: Stack(
        children: <Widget>[
          getCurrentPage(_selectedIndex),
        ],
      ),
      drawer: InkWellDrawer(),
      bottomNavigationBar: CustumBottomNavigationBar(onSelectItem: (index) {
        _selectedIndex = index;
        setState(() {});
      }),
    );
  }

  getCurrentPage(int selectedIndex) {
    return _widgetOptions.elementAt(selectedIndex);
  }
}
