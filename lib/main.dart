import 'package:flutter/material.dart';
//import 'package:vsapp/welcome.dart';
import 'splashstate.dart';

//import 'welcome.dart';
//import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        fontFamily: 'Manrope',
        cursorColor: Colors.grey,
        primaryColor: Colors.grey,

      ),
      home: Splash(),



    );
  }
}