import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Blue_GreyColor extends StatelessWidget {

  final tabstyle=TextStyle(color: Colors.black);
  final tabstyle1=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Container(
            color: Colors.blueGrey[50],
            child: ListTile(
              leading: Text("50",style:tabstyle,),
              trailing: Text("#FFECEFF1",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.blueGrey[100],
            child: ListTile(
              leading: Text("100",style:tabstyle,),
              trailing: Text("#FFCFD8DC",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.blueGrey[200],
            child: ListTile(
              leading: Text("200",style:tabstyle,),
              trailing: Text("#FFB0BEC5",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.blueGrey[300],
            child: ListTile(
              leading: Text("300",style:tabstyle1,),
              trailing: Text("#FF90A4AE",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.blueGrey[400],
            child: ListTile(
              leading: Text("400",style:tabstyle1,),
              trailing: Text("#FF78909C",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.blueGrey[500],
            child: ListTile(
              leading: Text("500",style:tabstyle1,),
              trailing: Text("#FF607D8B",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.blueGrey[600],
            child: ListTile(
              leading: Text("600",style:tabstyle1,),
              trailing: Text("#FF546E7A",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.blueGrey[700],
            child: ListTile(
              leading: Text("700",style:tabstyle1,),
              trailing: Text("#FF455A64",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.blueGrey[800],
            child: ListTile(
              leading: Text("800",style:tabstyle1,),
              trailing: Text("#FF37474F",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.blueGrey[900],
            child: ListTile(
              leading: Text("900",style:tabstyle1,),
              trailing: Text("#FF263238",style:tabstyle1,),
            ),
          ),
        ],
      ),
    );
  }
}
