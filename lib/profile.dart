import 'package:flutter/material.dart';
import 'package:sqflite/sqlite_api.dart';
import 'user.dart';
import 'database_helper.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  Future getDetails() async{
    Database db;
    var dbClient = await db;
    var result = await dbClient.rawQuery("SELECT name FROM User");
    return result;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          title: Text(
              'Manage Profile'
          )
      ),

      body: Text('${getDetails()}'),

    );
  }
}