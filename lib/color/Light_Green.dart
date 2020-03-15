import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Light_GreenColor extends StatelessWidget {

  final tabstyle=TextStyle(color: Colors.black);
  final tabstyle1=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Container(
            color: Colors.lightGreen[50],
            child: ListTile(
              leading: Text("50",style:tabstyle,),
              trailing: Text("#FFF1F8E9",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.lightGreen[100],
            child: ListTile(
              leading: Text("100",style:tabstyle,),
              trailing: Text("#FFDCEDC8",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.lightGreen[200],
            child: ListTile(
              leading: Text("200",style:tabstyle,),
              trailing: Text("#FFC5E1A5",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.lightGreen[300],
            child: ListTile(
              leading: Text("300",style:tabstyle1,),
              trailing: Text("#FFAED581",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lightGreen[400],
            child: ListTile(
              leading: Text("400",style:tabstyle1,),
              trailing: Text("#FF9CCC65",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lightGreen[500],
            child: ListTile(
              leading: Text("500",style:tabstyle1,),
              trailing: Text("#FF8BC34A",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lightGreen[600],
            child: ListTile(
              leading: Text("600",style:tabstyle1,),
              trailing: Text("#FF7CB342",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lightGreen[700],
            child: ListTile(
              leading: Text("700",style:tabstyle1,),
              trailing: Text("#FF689F38",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lightGreen[800],
            child: ListTile(
              leading: Text("800",style:tabstyle1,),
              trailing: Text("#FF558B2F",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lightGreen[900],
            child: ListTile(
              leading: Text("900",style:tabstyle1,),
              trailing: Text("#FF33691E",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lightGreenAccent[100],
            child: ListTile(
              leading: Text("A100",style:tabstyle,),
              trailing: Text("#FFCCFF90",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.lightGreenAccent[200],
            child: ListTile(
              leading: Text("A200",style:tabstyle,),
              trailing: Text("#FFB2FF59",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.lightGreenAccent[400],
            child: ListTile(
              leading: Text("A400",style:tabstyle1,),
              trailing: Text("#FF76FF03",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lightGreenAccent[700],
            child: ListTile(
              leading: Text("A700",style:tabstyle1,),
              trailing: Text("#FF64DD17",style:tabstyle1,),
            ),
          ),
        ],
      ),
    );
  }
}
