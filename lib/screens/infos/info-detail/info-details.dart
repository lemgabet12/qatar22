import 'package:flutter/material.dart';
import 'package:qatar22/screens/infos/info-detail/info-detail-list.dart';
import 'package:qatar22/screens/infos/info-detail/info-detail-map.dart';

class InfoDetails extends StatefulWidget {
  @override
  _InfoDetailsState createState() => _InfoDetailsState();
}

class _InfoDetailsState extends State<InfoDetails> {
  late TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              alignment: Alignment.centerLeft,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.filter_list, color: Colors.black),
              alignment: Alignment.centerLeft,
              onPressed: () {},
            )
          ],
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromRGBO(153, 35, 43, 1.0)),
            unselectedLabelColor: Colors.black,
            labelColor: Colors.white,
            tabs: [new Tab(text: "List"), new Tab(text: "Map")],
          ),
        ),
        body: TabBarView(
          children: [InfoDetailsList(), InfoDetailsMap()],
        ),
      ),
    );
  }
}
