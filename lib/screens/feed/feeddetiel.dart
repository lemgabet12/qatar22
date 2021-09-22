import 'package:flutter/material.dart';
import 'package:qatar22/screens/feed/Data/data.dart';

class DetailPage extends StatefulWidget {
  final Feed title;
  DetailPage(this.title);
  @override
  _CharacterDetailsPageState createState() => _CharacterDetailsPageState();
}

class _CharacterDetailsPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About ${widget.title.titre}"),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 100,
                  left: 0,
                  right: 0,
                  child: Center(
                      child: Container(
                    width: 120,
                    height: 120,
                    child: CircleAvatar(
                      radius: 100.0,
                      child: Container(
                        child: ClipOval(
                          child: SizedBox(
                              width: 120,
                              height: 120,
                              child: CircleAvatar(
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  child: FadeInImage(
                                      image: NetworkImage(widget.title.img),
                                      placeholder:
                                          AssetImage('assets/no-image.png'),
                                      height: 200.0,
                                      width: 700,
                                      fit: BoxFit.cover),
                                ),
                              )),
                        ),
                      ),
                    ),
                  )),
                ),
                Column(
                  children: <Widget>[
                    Center(
                        child: Text(
                      "${widget.title.titre}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
                    SizedBox(height: 10),
                    Card(
                      elevation: 2,
                      margin: EdgeInsets.all(8.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                              width: double.infinity,
                              child: Image.network("${widget.title.img}")), //
                          ListTile(
                            subtitle: Text("${widget.title.type}"),
                          ),
                          ListTile(
                            subtitle: Text("${widget.title.description}"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
