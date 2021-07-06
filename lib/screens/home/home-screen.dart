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
      // Drawer(
      //   // Add a ListView to the drawer. This ensures the user can scroll
      //   // through the options in the drawer if there isn't enough vertical
      //   // space to fit everything.
      //   child: ListView(
      //     // Important: Remove any padding from the ListView.
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       DrawerHeader(
      //           decoration: BoxDecoration(
      //             color: Color.fromRGBO(153, 35, 43, 1.0),
      //           ),
      //           child: SvgPicture.asset("images/logo2.svg",
      //               width: 50.0, height: 50.0, fit: BoxFit.fitWidth)),
      //       ListTile(
      //         title: Text('Item 1'),
      //         onTap: () {
      //           // Update the state of the app
      //           // ...
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: Text('Item 2'),
      //         onTap: () {
      //           // Update the state of the app
      //           // ...
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
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
