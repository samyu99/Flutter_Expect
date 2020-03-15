import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GreenColor extends StatelessWidget {
  final tabstyle=TextStyle(color: Colors.black);
  final tabstyle1=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Container(
            color: Colors.green[50],
            child: ListTile(
              leading: Text("50",style:tabstyle,),
              trailing: Text("#FFE8F5E9",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.green[100],
            child: ListTile(
              leading: Text("100",style:tabstyle,),
              trailing: Text("#FFC8E6C9",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.green[200],
            child: ListTile(
              leading: Text("200",style:tabstyle,),
              trailing: Text("#FFA5D6A7",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.green[300],
            child: ListTile(
              leading: Text("300",style:tabstyle1,),
              trailing: Text("#FF81C784",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.green[400],
            child: ListTile(
              leading: Text("400",style:tabstyle1,),
              trailing: Text("#FF66BB6A",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.green[500],
            child: ListTile(
              leading: Text("500",style:tabstyle1,),
              trailing: Text("#FF4CAF50",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.green[600],
            child: ListTile(
              leading: Text("600",style:tabstyle1,),
              trailing: Text("#FF43A047",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.green[700],
            child: ListTile(
              leading: Text("700",style:tabstyle1,),
              trailing: Text("#FF388E3C",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.green[800],
            child: ListTile(
              leading: Text("800",style:tabstyle1,),
              trailing: Text("#FF2E7D32",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.green[900],
            child: ListTile(
              leading: Text("900",style:tabstyle1,),
              trailing: Text("#FF1B5E20",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.greenAccent[100],
            child: ListTile(
              leading: Text("A100",style:tabstyle,),
              trailing: Text("#FFB9F6CA",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.greenAccent[200],
            child: ListTile(
              leading: Text("A200",style:tabstyle,),
              trailing: Text("#FF69F0AE",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.greenAccent[400],
            child: ListTile(
              leading: Text("A400",style:tabstyle1,),
              trailing: Text("#FF00E676",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.greenAccent[700],
            child: ListTile(
              leading: Text("A700",style:tabstyle1,),
              trailing: Text("#FF00C853",style:tabstyle1,),
            ),
          ),
        ],
      ),
    );
  }
}
