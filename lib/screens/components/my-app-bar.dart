import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myappbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'FIFA QATAR 2022',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.red.shade900,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0);
}
