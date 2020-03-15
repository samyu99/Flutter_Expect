import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CyanColor extends StatelessWidget {
  final tabstyle=TextStyle(color: Colors.black);
  final tabstyle1=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Container(
            color: Colors.cyan[50],
            child: ListTile(
              leading: Text("50",style:tabstyle,),
              trailing: Text("#FFE0F7FA",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.cyan[100],
            child: ListTile(
              leading: Text("100",style:tabstyle,),
              trailing: Text("#FFB2EBF2",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.cyan[200],
            child: ListTile(
              leading: Text("200",style:tabstyle,),
              trailing: Text("#FF80DEEA",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.cyan[300],
            child: ListTile(
              leading: Text("300",style:tabstyle1,),
              trailing: Text("#FF4DD0E1",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.cyan[400],
            child: ListTile(
              leading: Text("400",style:tabstyle1,),
              trailing: Text("#FF26C6DA",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.cyan[500],
            child: ListTile(
              leading: Text("500",style:tabstyle1,),
              trailing: Text("#FF00BCD4",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.cyan[600],
            child: ListTile(
              leading: Text("600",style:tabstyle1,),
              trailing: Text("#FF00ACC1",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.cyan[700],
            child: ListTile(
              leading: Text("700",style:tabstyle1,),
              trailing: Text("#FF0097A7",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.cyan[800],
            child: ListTile(
              leading: Text("800",style:tabstyle1,),
              trailing: Text("#FF00838F",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.cyan[900],
            child: ListTile(
              leading: Text("900",style:tabstyle1,),
              trailing: Text("#FF006064",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.cyanAccent[100],
            child: ListTile(
              leading: Text("A100",style:tabstyle,),
              trailing: Text("#FF84FFFF",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.cyanAccent[200],
            child: ListTile(
              leading: Text("A200",style:tabstyle,),
              trailing: Text("#FF18FFFF",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.cyanAccent[400],
            child: ListTile(
              leading: Text("A400",style:tabstyle1,),
              trailing: Text("#FF00E5FF",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.cyanAccent[700],
            child: ListTile(
              leading: Text("A700",style:tabstyle1,),
              trailing: Text("#FF00B8DA",style:tabstyle1,),
            ),
          ),
        ],
      ),
    );
  }
}
