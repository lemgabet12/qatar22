import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:qatar22/screens/account/userdata.dart';

class EditProfileScreen extends StatelessWidget {
  List<dynamic>? data;

  var URL;
  EditProfileScreen({this.data, this.URL});

  var nameController = TextEditingController();
  var prenomController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double defaultFontSize = 16;
    var formKey = GlobalKey<FormState>();
    String defaultFontFamily = 'Roboto-Light.ttf';

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
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
                      height: 20,
                    ),
                    TextFormField(
                      controller: nameController,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Name must not be empty';
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10.0,
                            ),
                          ),
                        ),
                        hintStyle: TextStyle(
                          color: Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize,
                        ),
                        labelText: "Name",
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: prenomController,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'prenom must not be empty';
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        hintStyle: TextStyle(
                          color: Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize,
                        ),
                        labelText: "prenom",
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      child: RaisedButton(
                        padding: EdgeInsets.all(15.0),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            updateData();
                            Navigator.of(context).pop();
                          }
                        },
                        child: Text(
                          "Save",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
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
          ),
        ),
      ),
    );
  }

  void updateData() async {
    var res = await http.put(
      URL,
      body: Q22Fan(
        idUser: data![0]['id_user'],
        img_user: data![0]['img_user'],
        nom: nameController.text,
        prenom: prenomController.text,
      ).toJson(),
    );
    print(res.body);
  }
}
