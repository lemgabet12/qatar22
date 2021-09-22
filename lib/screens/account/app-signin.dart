import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:qatar22/screens/account/userdatapage.dart';

class AccountScreen extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<AccountScreen> {
  // For CircularProgressIndicator.
  bool visible = false;
  // Getting value from TextField widget.
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var url;
  List<dynamic>? data = null;
  Future userLogin() async {
    url = Uri.parse(
      'http://q22.avocatar.tn/WebServices/login.php?login=${emailController.text}&password=${passwordController.text}',
    );
    var response = await http.get(
      url,
    );

    // print('Response status: ${response.statusCode}'); //Response status: 200
    // print('Response body: ${response.body}'); //Response body: {"Q22_Fan":[]}

    Map<String, dynamic> map = json.decode(response.body);
    data = map["Q22_Fan"];
  }

  @override
  Widget build(BuildContext context) {
    String defaultFontFamily = 'Roboto-Light.ttf';
    double defaultFontSize = 14;
    double defaultIconSize = 17;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 30),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                alignment: Alignment.center,
                child: Image.asset("assets/images/qatar3.png"),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: emailController,
                validator: (String? value) {
                  if (!RegExp(
                          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                      .hasMatch(value!)) {
                    return 'Enter valid e-mail format';
                  }
                },
                showCursor: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Color(0xFF666666),
                    size: defaultIconSize,
                  ),
                  fillColor: Color(0xFFF2F3F5),
                  hintStyle: TextStyle(
                      color: Color(0xFF666666),
                      fontFamily: defaultFontFamily,
                      fontSize: defaultFontSize),
                  hintText: "E-mail",
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: passwordController,
                validator: (String? value) {
                  if (value!.length <= 6) {
                    return 'Password must be more than 6 characters';
                  }
                },
                showCursor: true,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Color(0xFF666666),
                    size: defaultIconSize,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Color(0xFF666666),
                    size: defaultIconSize,
                  ),
                  fillColor: Color(0xFFF2F3F5),
                  hintStyle: TextStyle(
                    color: Color(0xFF666666),
                    fontFamily: defaultFontFamily,
                    fontSize: defaultFontSize,
                  ),
                  hintText: "Password",
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () => {},
                child: Container(
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(
                      color: Color(0xFFAC252B),
                      fontFamily: defaultFontFamily,
                      fontSize: defaultFontSize,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  padding: EdgeInsets.all(15.0),
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      await userLogin();
                      if (data!.isNotEmpty) {
                        emailController.clear();
                        passwordController.clear();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UserDataPage(
                              data: data,
                              URL: url,
                            ),
                          ),
                        );
                      } else {
                        return showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Login Error"),
                                content: Text(
                                    'Please! Enter valid username and password'),
                                actions: [
                                  FlatButton(
                                    child: Text("Ok"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  )
                                ],
                              );
                            });
                      }
                    }
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins-Medium.ttf',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  color: Color(0xFFBC1F26),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15.0),
                    side: BorderSide(
                      color: Color(
                        0xFFBC1F26,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
