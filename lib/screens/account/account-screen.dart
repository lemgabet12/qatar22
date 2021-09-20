import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:qatar22/screens/account/user_data_page.dart';

class AccountScreen extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<AccountScreen> {
  // For CircularProgressIndicator.
  bool visible = false;
  var flatBtnKey = GlobalKey();
  // Getting value from TextField widget.
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future userLogin() async {
    // Showing CircularProgressIndicator.
    setState(() {
      visible = true;
    });

    // Getting value from Controller
    String email = emailController.text;
    String password = passwordController.text;

    // SERVER LOGIN API URL

    // Store all data with Param Name.

    // Starting Web API Call.
    // var response = await http.post(
    //   Uri.parse(
    //       'http://q22.avocatar.tn/WebServices/login.php?login=&password=text_champ_password'),
    // );
    var url = Uri.parse(
        'http://q22.avocatar.tn/WebServices/login.php?login=${emailController.text}&password=${passwordController.text}'); //q22.avocatar.tn/WebServices/login.php?login=text_champs_login&password=text_champ_password
    var response = await http.post(url, body: {
      'id_user': '1',
      'nom': 'Malika',
      'prenom': 'Labidi',
      'img_user': ''
    });

    print('Response status: ${response.statusCode}'); //Response status: 200
    print('Response body: ${response.body}'); //Response body: {"Q22_Fan":[]}
    // var urlContent =
    //     "http://q22.avocatar.tn/WebServices/login.php?login=${snapshot.data.email}&password=${snapshot.data.passwrod}";

    // Getting Server response into variable.
    var responseObj = jsonDecode(response.body);
    print(responseObj);

    // If the Response Message is Matched.
    if (responseObj == 'success') {
      // Hiding the CircularProgressIndicator.
      setState(() {
        visible = false;
      });

      // Navigate to Home & Sending Email to Next Screen.
      Navigator.pushNamed(context, '/home');
    } else {
      // If Email or Password did not Matched.
      // Hiding the CircularProgressIndicator.
      setState(() {
        visible = false;
      });

      // Showing Alert Dialog with Response JSON Message.
      // showDialog(
      //   context: context,
      //   builder: (BuildContext context) {
      //     return AlertDialog(
      //       title: new Text(message),
      //       actions: <Widget>[
      //         FlatButton(
      //           child: new Text("OK"),
      //           onPressed: () {
      //             Navigator.of(context).pop();
      //           },
      //         ),
      //       ],
      //     );
      //   },
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(),
            SizedBox(height: 10.0),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Enter Username or Email'),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Enter Password'),
              autofocus: false,
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            FlatButton(
              key: flatBtnKey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.green)),
              onPressed: () async {
                await userLogin();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserDataPage()));
              },
              child: Text('login'),
              color: Colors.green,
              minWidth: 300.0,
            ),
            SizedBox(height: 20.0),
            Text('Forgot Password?'),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.green)),
              onPressed: () {
                Navigator.pushNamed(context, '/resetpassword');
              },
              child: Text('Reset Password'),
              color: Colors.green,
              minWidth: 200.0,
            ),
            SizedBox(height: 20.0),
            Text('Do not have an account yet?'),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.green)),
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Text('Sign Up'),
              color: Colors.green,
              minWidth: 200.0,
            ),
          ],
        ),
        // ],
      ),
      // ),
    );
  }
}
