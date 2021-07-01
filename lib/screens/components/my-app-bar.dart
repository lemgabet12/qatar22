import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Myappbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: SvgPicture.asset("images/logo2.svg",
            width: 150.0, height: 100.0, fit: BoxFit.cover),
        backgroundColor: Color.fromRGBO(153, 35, 43, 1.0),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white),
            alignment: Alignment.centerLeft,
            onPressed: () {
              // do something
            },
          )
        ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(70.0);
}
