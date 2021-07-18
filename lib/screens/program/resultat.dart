import 'package:flutter/material.dart';
import 'package:qatar22/screens/program/widgets/ress.dart';

class Resultat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Ress(),
          ],
        ),
      ),
    );
  }
}
