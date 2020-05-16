import 'package:flutter/material.dart';
import 'login.dart';
import 'profile.dart';
import 'dashboard.dart';


class Dash extends StatefulWidget {
  @override
  _DashState createState() => _DashState();
}

class _DashState extends State<Dash> {
  int _index =0;
  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (_index) {
      case 0:
        child = Dashboard();
        break;
      case 1:
        child = LoginPage();
        break;
      case 2:
        child = Profile();
        break;
    }

    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(

        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), title: Text("Dashboard")),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("Seacrh")),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), title: Text("Profile")),
        ],
      ),



    );
  }
}