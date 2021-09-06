import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qatar22/screens/components/settings.dart';

class Myappbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: SvgPicture.asset("assets/images/logo2.svg",
            width: 600.0, height: 150.0, fit: BoxFit.cover),
        backgroundColor: (Colors.pink.shade900),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white),
            alignment: Alignment.centerLeft,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsFourPage()),
              );
            },
          )
        ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(70.0);
}
