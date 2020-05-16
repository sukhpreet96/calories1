import 'package:flutter/material.dart';
import 'package:gender_selection/gender_selection.dart';
import 'dart:async';
import 'database_helper.dart';
import 'user.dart';
import 'homepage.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final tfName = TextEditingController();
  final tfAge = TextEditingController();
  final tfHeight = TextEditingController();
  final tfWeight = TextEditingController();
  Gender tfGender;
  User user;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Tell us bit about yourself',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.4,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            FlatButton(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              child: CircleAvatar(
                                backgroundColor: Colors.grey[200],
                                radius: 100.0,
                                child: Image.asset(
                                  'images/man-avatar.png',
                                  height: 130.0,
                                  width: 130.0,
                                ),
                              ),
                              onPressed: () {},
                            ),
                            Container(
                              width: 250,
                              child: TextField(
                                controller: tfName,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                ),
                                decoration: InputDecoration(
                                  labelText: "Name",
                                  labelStyle: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 250.0,
                              child: TextField(
                                controller: tfAge,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                ),
                                decoration: InputDecoration(
                                  labelText: "Age",
                                  labelStyle: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 250.0,
                              child: TextField(
                                controller: tfHeight,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  letterSpacing: 1.5,
                                ),
                                decoration: InputDecoration(
                                  labelText: "Height(cms)",
                                  labelStyle: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                                width: 250.0,
                                child: TextField(
                                  controller: tfWeight,
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: "Weight(Kgs)",
                                    labelStyle: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                )),
                            Container(
                              child: GenderSelection(
                                maleText: "Male",
                                femaleText: "Female",
                                selectedGenderIconBackgroundColor:
                                Colors.indigo,
                                checkIconAlignment: Alignment.centerRight,
                                selectedGenderCheckIcon: null,
                                onChanged: (Gender gender) {
                                  tfGender = gender;
                                  print(gender);
                                },
                                equallyAligned: true,
                                animationDuration: Duration(milliseconds: 400),
                                isCircular: true, // default : true,
                                isSelectedGenderIconCircular: true,
                                opacityOfGradient: 0.6,
                                padding: const EdgeInsets.all(3),
                                size: 120, //default : 120
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 180.0,
                      child: RaisedButton(
                          color: Colors.green[300],
                          child: Text(
                            'Continue',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          onPressed: () {
                            addRecord();
                          }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future addRecord() async {
    var db = DatabaseHelper();
    var user = new User(
        tfName.text,
        int.parse(tfAge.text),
        double.parse(tfHeight.text),
        double.parse(tfWeight.text),
        tfGender.toString());
    await db.saveUser(user);
    Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => Dash()));
  }
}
