import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PinkColor extends StatelessWidget {
  final tabstyle=TextStyle(color: Colors.black);
  final tabstyle1=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Container(
            color: Colors.pink[50],
            child: ListTile(
              leading: Text("50",style:tabstyle,),
              trailing: Text("#FFFCE4EC",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.pink[100],
            child: ListTile(
              leading: Text("100",style:tabstyle,),
              trailing: Text("#FFF8BBD0",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.pink[200],
            child: ListTile(
              leading: Text("200",style:tabstyle,),
              trailing: Text("#FFF48FB1",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.pink[300],
            child: ListTile(
              leading: Text("300",style:tabstyle1,),
              trailing: Text("#FFF06292",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.pink[400],
            child: ListTile(
              leading: Text("400",style:tabstyle1,),
              trailing: Text("#FFEC407A",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.pink[500],
            child: ListTile(
              leading: Text("500",style:tabstyle1,),
              trailing: Text("#FFE91E63",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.pink[600],
            child: ListTile(
              leading: Text("600",style:tabstyle1,),
              trailing: Text("#FFD81B60",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.pink[700],
            child: ListTile(
              leading: Text("700",style:tabstyle1,),
              trailing: Text("#FFC2185B",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.pink[800],
            child: ListTile(
              leading: Text("800",style:tabstyle1,),
              trailing: Text("#FFAD1457",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.pink[900],
            child: ListTile(
              leading: Text("900",style:tabstyle1,),
              trailing: Text("#FF880E4F",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.pinkAccent[100],
            child: ListTile(
              leading: Text("A100",style:tabstyle,),
              trailing: Text("#FFFF80AB",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.pinkAccent[200],
            child: ListTile(
              leading: Text("A200",style:tabstyle,),
              trailing: Text("#FFFF4081",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.pinkAccent[400],
            child: ListTile(
              leading: Text("A400",style:tabstyle1,),
              trailing: Text("#FFF50057",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.pinkAccent[700],
            child: ListTile(
              leading: Text("A700",style:tabstyle1,),
              trailing: Text("#FFDC51162",style:tabstyle1,),
            ),
          ),
        ],
      ),
    );
  }
}
