import 'package:flutter/material.dart';
import 'package:qatar22/screens/components/bottom-navigation-bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fifa Qatar 2022'),
      ),
      body: Center(child: Text("home")),
      bottomNavigationBar: CustumBottomNavigationBar(),
    );
  }
}
