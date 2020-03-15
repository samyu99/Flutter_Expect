import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Deep_PurpleColor extends StatelessWidget {
  final tabstyle=TextStyle(color: Colors.black);
  final tabstyle1=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Container(
            color: Colors.deepPurple[50],
            child: ListTile(
              leading: Text("50",style:tabstyle,),
              trailing: Text("#FFEDE7F6",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.deepPurple[100],
            child: ListTile(
              leading: Text("100",style:tabstyle,),
              trailing: Text("#FFD1C4E9",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.deepPurple[200],
            child: ListTile(
              leading: Text("200",style:tabstyle,),
              trailing: Text("#FFB39DDB",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.deepPurple[300],
            child: ListTile(
              leading: Text("300",style:tabstyle1,),
              trailing: Text("#FF9575CD",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.deepPurple[400],
            child: ListTile(
              leading: Text("400",style:tabstyle1,),
              trailing: Text("#FF7E57C2",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.deepPurple[500],
            child: ListTile(
              leading: Text("500",style:tabstyle1,),
              trailing: Text("#FF673AB7",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.deepPurple[600],
            child: ListTile(
              leading: Text("600",style:tabstyle1,),
              trailing: Text("#FF5E35B1",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.deepPurple[700],
            child: ListTile(
              leading: Text("700",style:tabstyle1,),
              trailing: Text("#FF512DA8",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.deepPurple[800],
            child: ListTile(
              leading: Text("800",style:tabstyle1,),
              trailing: Text("#FF4527A0",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.deepPurple[900],
            child: ListTile(
              leading: Text("900",style:tabstyle1,),
              trailing: Text("#FF311B92",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.deepPurpleAccent[100],
            child: ListTile(
              leading: Text("A100",style:tabstyle,),
              trailing: Text("#FFB388FF",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.deepPurpleAccent[200],
            child: ListTile(
              leading: Text("A200",style:tabstyle,),
              trailing: Text("#FF7C4DFF",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.deepPurpleAccent[400],
            child: ListTile(
              leading: Text("A400",style:tabstyle1,),
              trailing: Text("#FF651FFF",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.deepPurpleAccent[700],
            child: ListTile(
              leading: Text("A700",style:tabstyle1,),
              trailing: Text("#FF6200EA",style:tabstyle1,),
            ),
          ),
        ],
      ),
    );
  }
}
