import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YellowColor extends StatelessWidget {

  final tabstyle=TextStyle(color: Colors.black);
  final tabstyle1=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Container(
            color: Colors.yellow[50],
            child: ListTile(
              leading: Text("50",style:tabstyle,),
              trailing: Text("#FFFFDE7",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.yellow[100],
            child: ListTile(
              leading: Text("100",style:tabstyle,),
              trailing: Text("#FFFF9C4",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.yellow[200],
            child: ListTile(
              leading: Text("200",style:tabstyle,),
              trailing: Text("#FFFFF59D",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.yellow[300],
            child: ListTile(
              leading: Text("300",style:tabstyle1,),
              trailing: Text("#FFFF176",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.yellow[400],
            child: ListTile(
              leading: Text("400",style:tabstyle1,),
              trailing: Text("#FFFFEE58",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.yellow[500],
            child: ListTile(
              leading: Text("500",style:tabstyle1,),
              trailing: Text("#FFFFEB3B",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.yellow[600],
            child: ListTile(
              leading: Text("600",style:tabstyle1,),
              trailing: Text("#FFFDD835",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.yellow[700],
            child: ListTile(
              leading: Text("700",style:tabstyle1,),
              trailing: Text("#FFFBC02D",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.yellow[800],
            child: ListTile(
              leading: Text("800",style:tabstyle1,),
              trailing: Text("#FFF9A825",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.yellow[900],
            child: ListTile(
              leading: Text("900",style:tabstyle1,),
              trailing: Text("#FFF5717",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.yellowAccent[100],
            child: ListTile(
              leading: Text("A100",style:tabstyle,),
              trailing: Text("#FFFFFF8D",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.yellowAccent[200],
            child: ListTile(
              leading: Text("A200",style:tabstyle,),
              trailing: Text("#FFFFF00",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.yellowAccent[400],
            child: ListTile(
              leading: Text("A400",style:tabstyle1,),
              trailing: Text("#FFFFEA00",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.yellowAccent[700],
            child: ListTile(
              leading: Text("A700",style:tabstyle1,),
              trailing: Text("#FFFFD600",style:tabstyle1,),
            ),
          ),
        ],
      ),
    );
  }
}
