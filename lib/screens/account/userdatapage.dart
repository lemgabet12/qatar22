import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qatar22/screens/account/update_profile_screen.dart';

class UserDataPage extends StatelessWidget {
  List<dynamic>? data;
  var URL;
  UserDataPage({this.data, this.URL});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 12,
                bottom: 8,
                left: 8,
                right: 8,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    child: Image(
                      image: NetworkImage(
                        '${data![0]['img_user']}',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '${data![0]['nom']} ${data![0]['prenom']}',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    onPressed: null,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Publish Post",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins-Medium.ttf',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    color: Color(0xFFBC1F26),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12.0),
                      side: BorderSide(
                        color: Color(
                          0xFFBC1F26,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  RaisedButton(
                    onPressed: null,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "View Fan's Posts",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins-Medium.ttf',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    color: Color(0xFFBC1F26),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12.0),
                      side: BorderSide(
                        color: Color(
                          0xFFBC1F26,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  RaisedButton(
                    onPressed: null,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "E-Survey",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins-Medium.ttf',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    color: Color(0xFFBC1F26),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12.0),
                      side: BorderSide(
                        color: Color(
                          0xFFBC1F26,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  RaisedButton(
                    padding: EdgeInsets.all(10.0),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EditProfileScreen(
                                data: data,
                                URL: URL,
                              )));
                    },
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins-Medium.ttf',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    color: Color(0xFFBC1F26),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12.0),
                      side: BorderSide(
                        color: Color(
                          0xFFBC1F26,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  RaisedButton(
                    padding: EdgeInsets.all(10.0),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "log out",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins-Medium.ttf',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    color: Color(0xFFBC1F26),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12.0),
                      side: BorderSide(
                        color: Color(
                          0xFFBC1F26,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
