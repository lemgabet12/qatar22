import 'package:flutter/material.dart';
import 'package:qatar22/screens/home/home-screen.dart';

class Vote extends StatefulWidget {
  final String firstName, lastName, userImage, userId;

  Vote(this.firstName, this.lastName, this.userImage, this.userId);
  @override
  _VoteState createState() => _VoteState();
}

class _VoteState extends State<Vote> {
  Widget _buildPost(String index) {
    //  index = widget.userId;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 560.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 2),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image(
                            height: 50.0,
                            width: 50.0,
                            image: AssetImage(widget.userImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      widget.firstName + " " + widget.lastName,
                      style: TextStyle(
                        fontFamily: FontNameDefault,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //subtitle: Text(widget.lastName[index].timeAgo),
                  ),
                  InkWell(
                    onDoubleTap: () => print('Like post'),
                    onTap: () {
                      //Navigator.push(
                      //context,
                      // MaterialPageRoute(
                      //builder: (_) => ViewPostScreen(
                      // post: posts[index],
                      // ),
                      // ),
                      // );
                    },
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      width: double.infinity,
                      height: 400.0,
                      decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(25.0),
                          //image: DecorationImage(
                          //image: AssetImage(posts[index].imageUrl),
                          //  fit: BoxFit.fitWidth,
                          //  ),
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  iconSize: 30.0,
                                  onPressed: () => print('Like post'),
                                ),
                                Text(
                                  '2,515',
                                  style: TextStyle(
                                    fontFamily: FontNameDefault,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20.0),
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.chat),
                                  iconSize: 30.0,
                                  onPressed: () {
                                    //Navigator.push(
                                    //context,
                                    // MaterialPageRoute(
                                    // builder: (_) => ViewPostScreen(
                                    // post: posts[index],
                                    // ),
                                    // ),
                                    // );
                                  },
                                ),
                                Text(
                                  '350',
                                  style: TextStyle(
                                    fontFamily: FontNameDefault,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[],
            ),
          ),
          _buildPost(widget.userId),
          _buildPost(widget.userId),
        ],
      ),
    );
  }
}
