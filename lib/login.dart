import 'dart:ui';
import 'package:flutter/material.dart';
import 'foods.dart';

var newIndex;

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController searchControl = TextEditingController();

  String filter;
  @override
  void initState() {
    searchControl.addListener(() {
      setState(() {
        filter = searchControl.text;
      });
    });

    @override
    void dispose() {
      searchControl.dispose();
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 2.0, top: 10.0, right: 2.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                height: 60.0,
                child: Card(
                  elevation: 2.0,
                  child: TextField(
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 22.0,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w600,
                    ),
                    controller: searchControl,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.yellow, width: 0.0),
                      ),
                      hintText: 'Search a food',
                      hintStyle: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 17.0,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: Foods.foodList.length,
                  itemBuilder: (BuildContext context, int index) {
                    // _FruitDialogState().setIndex(index);
                    return filter == null || filter == ""
                        ? new ListTile(
                        contentPadding: EdgeInsets.all(15.0),
                        leading: Image.asset(Foods.foodList[index].image),
                        title: Text(
                          Foods.foodList[index].foodTitle,
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            letterSpacing: 1.5,
                          ),
                        ),
                        subtitle: Text(
                          Foods.foodList[index].subTitle,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600],
                          ),
                        ),
                        onTap: () {
                          newIndex = index;

                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) {
                              return FruitDialog();
                            },
                          );
                        })
                        : Foods.foodList[index].foodTitle
                        .toLowerCase()
                        .contains(filter.toLowerCase())
                        ? new ListTile(
                        contentPadding: EdgeInsets.all(15.0),
                        leading:
                        Image.asset(Foods.foodList[index].image),
                        title: Text(
                          Foods.foodList[index].foodTitle,
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            letterSpacing: 1.5,
                          ),
                        ),
                        subtitle: Text(
                          Foods.foodList[index].subTitle,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600],
                          ),
                        ),
                        onTap: () {
                          newIndex = index;
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) {
                              return FruitDialog();
                            },
                          );
                        })
                        : new Container();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FruitDialog extends StatefulWidget {
  @override
  _FruitDialogState createState() => _FruitDialogState();
}

class _FruitDialogState extends State<FruitDialog> {
  int _currentFruitvalue = 0;
  int index1;

  void addCount() {
    setState(() {
      _currentFruitvalue++;
      print(_currentFruitvalue);
    });
  }

  void minusCount() {
    setState(() {
      if (_currentFruitvalue != 0) _currentFruitvalue--;
      print(_currentFruitvalue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      content: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(Foods.foodList[newIndex].foodTitle,
                    style: TextStyle(
                      fontSize:35.0,
                      fontWeight: FontWeight.bold,

                    ),),
                ),

                SizedBox(
                  height: 20.0,
                ),
                Image.asset(
                  Foods.foodList[newIndex].image,
                  width: 150.0,
                  height: 150.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Foods.foodList[newIndex].type == 'quantity'
                    ? new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new FloatingActionButton(
                      onPressed: addCount,
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    new Text(
                      '$_currentFruitvalue',
                      style: TextStyle(
                        fontSize: 60.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    new FloatingActionButton(
                      onPressed: minusCount,
                      child: Icon(
                        Icons.remove,
                        color: Colors.black,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ],
                )
                    : Container(
                  width: 100,
                  height: 55.0,

                  child: new TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:18.0,

                    ),
                    decoration: InputDecoration(
                      hintText: 'grams',
                      border: OutlineInputBorder(


                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  width: 200.0,
                  child: RaisedButton(
                    color: Colors.green[400],
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 60.0, right: 60.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Pros',
                        style: TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                      Text(
                        Foods.foodList[newIndex].pros,
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Cons',
                        style: TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                      Text(
                        Foods.foodList[newIndex].cons,
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AddFood extends StatefulWidget {
  @override
  _AddFoodState createState() => _AddFoodState();
}

class _AddFoodState extends State<AddFood> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
