import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TealColor extends StatelessWidget {
  final tabstyle=TextStyle(color: Colors.black);
  final tabstyle1=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Container(
            color: Colors.teal[50],
            child: ListTile(
              leading: Text("50",style:tabstyle,),
              trailing: Text("#FFE0F2F1",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.teal[100],
            child: ListTile(
              leading: Text("100",style:tabstyle,),
              trailing: Text("#FFB2DFDB",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.teal[200],
            child: ListTile(
              leading: Text("200",style:tabstyle,),
              trailing: Text("#FF80CBC4",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.teal[300],
            child: ListTile(
              leading: Text("300",style:tabstyle1,),
              trailing: Text("#FF4DB6AC",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.teal[400],
            child: ListTile(
              leading: Text("400",style:tabstyle1,),
              trailing: Text("#FF26A69A",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.teal[500],
            child: ListTile(
              leading: Text("500",style:tabstyle1,),
              trailing: Text("#FF009688",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.teal[600],
            child: ListTile(
              leading: Text("600",style:tabstyle1,),
              trailing: Text("#FF00897B",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.teal[700],
            child: ListTile(
              leading: Text("700",style:tabstyle1,),
              trailing: Text("#FF00796B",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.teal[800],
            child: ListTile(
              leading: Text("800",style:tabstyle1,),
              trailing: Text("#FF00695C",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.teal[900],
            child: ListTile(
              leading: Text("900",style:tabstyle1,),
              trailing: Text("#FF004D40",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.tealAccent[100],
            child: ListTile(
              leading: Text("A100",style:tabstyle,),
              trailing: Text("#FFA7FFEB",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.tealAccent[200],
            child: ListTile(
              leading: Text("A200",style:tabstyle,),
              trailing: Text("#FF64FFDA",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.tealAccent[400],
            child: ListTile(
              leading: Text("A400",style:tabstyle1,),
              trailing: Text("#FF1DE9B6",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.tealAccent[700],
            child: ListTile(
              leading: Text("A700",style:tabstyle1,),
              trailing: Text("#FF00BFA5",style:tabstyle1,),
            ),
          ),
        ],
      ),
    );
  }
}
