import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AmberColor extends StatelessWidget {

  final tabstyle=TextStyle(color: Colors.black);
  final tabstyle1=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Container(
            color: Colors.amber[50],
            child: ListTile(
              leading: Text("50",style:tabstyle,),
              trailing: Text("#FFFFF8E1",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.amber[100],
            child: ListTile(
              leading: Text("100",style:tabstyle,),
              trailing: Text("#FFFFECB3",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.amber[200],
            child: ListTile(
              leading: Text("200",style:tabstyle,),
              trailing: Text("#FFFFE082",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.amber[300],
            child: ListTile(
              leading: Text("300",style:tabstyle1,),
              trailing: Text("#FFFFD54F",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.amber[400],
            child: ListTile(
              leading: Text("400",style:tabstyle1,),
              trailing: Text("#FFFFCA28",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.amber[500],
            child: ListTile(
              leading: Text("500",style:tabstyle1,),
              trailing: Text("#FFFFC107",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.amber[600],
            child: ListTile(
              leading: Text("600",style:tabstyle1,),
              trailing: Text("#FFFFB300",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.amber[700],
            child: ListTile(
              leading: Text("700",style:tabstyle1,),
              trailing: Text("#FFFFA000",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.amber[800],
            child: ListTile(
              leading: Text("800",style:tabstyle1,),
              trailing: Text("#FFFF8F00",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.amber[900],
            child: ListTile(
              leading: Text("900",style:tabstyle1,),
              trailing: Text("#FFFF6F00",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.amberAccent[100],
            child: ListTile(
              leading: Text("A100",style:tabstyle,),
              trailing: Text("#FFFFE57F",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.amberAccent[200],
            child: ListTile(
              leading: Text("A200",style:tabstyle,),
              trailing: Text("#FFFFD740",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.amberAccent[400],
            child: ListTile(
              leading: Text("A400",style:tabstyle1,),
              trailing: Text("#FFFFC400",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.amberAccent[700],
            child: ListTile(
              leading: Text("A700",style:tabstyle1,),
              trailing: Text("#FFFFAB00",style:tabstyle1,),
            ),
          ),
        ],
      ),
    );
  }
}
