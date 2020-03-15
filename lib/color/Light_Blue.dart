import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Light_BlueColor extends StatelessWidget {
  final tabstyle=TextStyle(color: Colors.black);
  final tabstyle1=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Container(
            color: Colors.lightBlue[50],
            child: ListTile(
              leading: Text("50",style:tabstyle,),
              trailing: Text("#FFE1F5FE",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.lightBlue[100],
            child: ListTile(
              leading: Text("100",style:tabstyle,),
              trailing: Text("#FFB3E5FC",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.lightBlue[200],
            child: ListTile(
              leading: Text("200",style:tabstyle,),
              trailing: Text("#FF81D4FA",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.lightBlue[300],
            child: ListTile(
              leading: Text("300",style:tabstyle1,),
              trailing: Text("#FF4FC3F7",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lightBlue[400],
            child: ListTile(
              leading: Text("400",style:tabstyle1,),
              trailing: Text("#FF29B6F6",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lightBlue[500],
            child: ListTile(
              leading: Text("500",style:tabstyle1,),
              trailing: Text("#FF03A9F4",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lightBlue[600],
            child: ListTile(
              leading: Text("600",style:tabstyle1,),
              trailing: Text("#FF039BE5",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lightBlue[700],
            child: ListTile(
              leading: Text("700",style:tabstyle1,),
              trailing: Text("#FF0288D1",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lightBlue[800],
            child: ListTile(
              leading: Text("800",style:tabstyle1,),
              trailing: Text("#FF0277BD",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lightBlue[900],
            child: ListTile(
              leading: Text("900",style:tabstyle1,),
              trailing: Text("#FF01579B",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lightBlueAccent[100],
            child: ListTile(
              leading: Text("A100",style:tabstyle,),
              trailing: Text("#FF80D8FF",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.lightBlueAccent[200],
            child: ListTile(
              leading: Text("A200",style:tabstyle,),
              trailing: Text("#FF40C4FF",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.lightBlueAccent[400],
            child: ListTile(
              leading: Text("A400",style:tabstyle1,),
              trailing: Text("#FF00B0FF",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lightBlueAccent[700],
            child: ListTile(
              leading: Text("A700",style:tabstyle1,),
              trailing: Text("#FF0091EA",style:tabstyle1,),
            ),
          ),
        ],
      ),
    );
  }
}
