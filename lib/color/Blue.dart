import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlueColor extends StatelessWidget {
  final tabstyle=TextStyle(color: Colors.black);
  final tabstyle1=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Container(
            color: Colors.blue[50],
            child: ListTile(
              leading: Text("50",style:tabstyle,),
              trailing: Text("#FFE3F2FD",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.blue[100],
            child: ListTile(
              leading: Text("100",style:tabstyle,),
              trailing: Text("#FFBBDEFB",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.blue[200],
            child: ListTile(
              leading: Text("200",style:tabstyle,),
              trailing: Text("#FF90CAF9",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.blue[300],
            child: ListTile(
              leading: Text("300",style:tabstyle1,),
              trailing: Text("#FF64B5F6",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.blue[400],
            child: ListTile(
              leading: Text("400",style:tabstyle1,),
              trailing: Text("#FF42A5F5",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.blue[500],
            child: ListTile(
              leading: Text("500",style:tabstyle1,),
              trailing: Text("#FF2196F3",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.blue[600],
            child: ListTile(
              leading: Text("600",style:tabstyle1,),
              trailing: Text("#FF1E88E5",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.blue[700],
            child: ListTile(
              leading: Text("700",style:tabstyle1,),
              trailing: Text("#FF1976D2",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.blue[800],
            child: ListTile(
              leading: Text("800",style:tabstyle1,),
              trailing: Text("#FF1565C0",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.blue[900],
            child: ListTile(
              leading: Text("900",style:tabstyle1,),
              trailing: Text("#FF0D47A1",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.blueAccent[100],
            child: ListTile(
              leading: Text("A100",style:tabstyle,),
              trailing: Text("#FF82B1FF",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.blueAccent[200],
            child: ListTile(
              leading: Text("A200",style:tabstyle,),
              trailing: Text("#FF448AFF",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.blueAccent[400],
            child: ListTile(
              leading: Text("A400",style:tabstyle1,),
              trailing: Text("#FF2979FF",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.blueAccent[700],
            child: ListTile(
              leading: Text("A700",style:tabstyle1,),
              trailing: Text("#FF2962FF",style:tabstyle1,),
            ),
          ),
        ],
      ),
    );
  }
}
