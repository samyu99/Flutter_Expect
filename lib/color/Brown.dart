import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrownColor extends StatelessWidget {

  final tabstyle=TextStyle(color: Colors.black);
  final tabstyle1=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Container(
            color: Colors.brown[50],
            child: ListTile(
              leading: Text("50",style:tabstyle,),
              trailing: Text("#FFEFEBE9",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.brown[100],
            child: ListTile(
              leading: Text("100",style:tabstyle,),
              trailing: Text("#FFD7CCC8",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.brown[200],
            child: ListTile(
              leading: Text("200",style:tabstyle,),
              trailing: Text("#FFBCAAA4",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.brown[300],
            child: ListTile(
              leading: Text("300",style:tabstyle1,),
              trailing: Text("#FFA1887F",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.brown[400],
            child: ListTile(
              leading: Text("400",style:tabstyle1,),
              trailing: Text("#FF8D6E63",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.brown[500],
            child: ListTile(
              leading: Text("500",style:tabstyle1,),
              trailing: Text("#FF795548",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.brown[600],
            child: ListTile(
              leading: Text("600",style:tabstyle1,),
              trailing: Text("#FF6D4C41",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.brown[700],
            child: ListTile(
              leading: Text("700",style:tabstyle1,),
              trailing: Text("#FF5D4037",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.brown[800],
            child: ListTile(
              leading: Text("800",style:tabstyle1,),
              trailing: Text("#FF4E342E",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.brown[900],
            child: ListTile(
              leading: Text("900",style:tabstyle1,),
              trailing: Text("#FF3E2723",style:tabstyle1,),
            ),
          ),
        ],
      ),
    );
  }
}
