import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qatar22/screens/account/userdata.dart';

class UserDataPage extends StatelessWidget {
  final UserModel? user;
  UserDataPage({this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(10),
              ),
              height: 400,
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            NetworkImage('${user ?? ['img_user']}'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${user ?? ['nom']} ${user ?? ['prenom']}',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 300,
                    child: Image(
                      image: NetworkImage(
                        '${user ?? ['img_user']}',
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
