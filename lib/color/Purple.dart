import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PurpleColor extends StatelessWidget {
  final tabstyle=TextStyle(color: Colors.black);
  final tabstyle1=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Container(
            color: Colors.purple[50],
            child: ListTile(
              leading: Text("50",style:tabstyle,),
              trailing: Text("#FFF3E5F5",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.purple[100],
            child: ListTile(
              leading: Text("100",style:tabstyle,),
              trailing: Text("#FFE1BEE7",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.purple[200],
            child: ListTile(
              leading: Text("200",style:tabstyle,),
              trailing: Text("#FFCE93D8",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.purple[300],
            child: ListTile(
              leading: Text("300",style:tabstyle1,),
              trailing: Text("#FFBA68C8",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.purple[400],
            child: ListTile(
              leading: Text("400",style:tabstyle1,),
              trailing: Text("#FFAB47BC",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.purple[500],
            child: ListTile(
              leading: Text("500",style:tabstyle1,),
              trailing: Text("#FF9C27B0",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.purple[600],
            child: ListTile(
              leading: Text("600",style:tabstyle1,),
              trailing: Text("#FF8E24AA",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.purple[700],
            child: ListTile(
              leading: Text("700",style:tabstyle1,),
              trailing: Text("#FF7B1FA2",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.purple[800],
            child: ListTile(
              leading: Text("800",style:tabstyle1,),
              trailing: Text("#FF6A1B9A",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.purple[900],
            child: ListTile(
              leading: Text("900",style:tabstyle1,),
              trailing: Text("#FF4A148C",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.purpleAccent[100],
            child: ListTile(
              leading: Text("A100",style:tabstyle,),
              trailing: Text("#FFEA80FC",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.purpleAccent[200],
            child: ListTile(
              leading: Text("A200",style:tabstyle,),
              trailing: Text("#FFE040FB",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.purpleAccent[400],
            child: ListTile(
              leading: Text("A400",style:tabstyle1,),
              trailing: Text("#FFD500F9",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.purpleAccent[700],
            child: ListTile(
              leading: Text("A700",style:tabstyle1,),
              trailing: Text("#FFAA00FF",style:tabstyle1,),
            ),
          ),
        ],
      ),
    );
  }
}
