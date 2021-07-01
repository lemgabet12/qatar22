import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qatar22/screens/feed/Data/data.dart';
import 'package:qatar22/screens/feed/Widgets/ForYouContainer.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  Widget buildForYouContainers() {
    List<Widget> forYouContainers = [];
    for (Article article in forYou) {
      forYouContainers.add(ForYouContainer(
        article: article,
      ));
    }

    return Column(
      children: forYouContainers,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6f9),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 10,
          ),
          buildForYouContainers(),
        ],
      ),
    );
  }
}
