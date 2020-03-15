import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RedColor extends StatelessWidget {
  final tabstyle=TextStyle(color: Colors.black);
  final tabstyle1=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(7.0),
          children: <Widget>[
            Container(
              color: Colors.red[50],
              child: ListTile(
                leading: Text("50",style:tabstyle,),
                trailing: Text("#FFFFEBEE",style:tabstyle,),
              ),
            ),
            Container(
              color: Colors.red[100],
              child: ListTile(
                leading: Text("100",style:tabstyle,),
                trailing: Text("#FFFFCDD2",style:tabstyle,),
              ),
            ),
            Container(
              color: Colors.red[200],
              child: ListTile(
                leading: Text("200",style:tabstyle,),
                trailing: Text("#FFEF9A9A",style:tabstyle,),
              ),
            ),
            Container(
              color: Colors.red[300],
              child: ListTile(
                leading: Text("300",style:tabstyle,),
                trailing: Text("#FFE57373",style:tabstyle,),
              ),
            ),
            Container(
              color: Colors.red[400],
              child: ListTile(
                leading: Text("400",style:tabstyle1,),
                trailing: Text("#FFEF5350",style:tabstyle1,),
              ),
            ),
            Container(
              color: Colors.red[500],
              child: ListTile(
                leading: Text("500",style:tabstyle1,),
                trailing: Text("#FFF44336",style:tabstyle1,),
              ),
            ),
            Container(
              color: Colors.red[600],
              child: ListTile(
                leading: Text("600",style:tabstyle1,),
                trailing: Text("#FFE53935",style:tabstyle1,),
              ),
            ),
            Container(
              color: Colors.red[700],
              child: ListTile(
                leading: Text("700",style:tabstyle1,),
                trailing: Text("#FFD32F2F",style:tabstyle1,),
              ),
            ),
            Container(
              color: Colors.red[800],
              child: ListTile(
                leading: Text("800",style:tabstyle1,),
                trailing: Text("#FFC62828",style:tabstyle1,),
              ),
            ),
            Container(
              color: Colors.red[900],
              child: ListTile(
                leading: Text("900",style:tabstyle1,),
                trailing: Text("#FFB71C1C",style:tabstyle1,),
              ),
            ),
            Container(
              color: Colors.redAccent[100],
              child: ListTile(
                leading: Text("A100",style:tabstyle,),
                trailing: Text("#FFFF8A80",style:tabstyle,),
              ),
            ),
            Container(
              color: Colors.redAccent[200],
              child: ListTile(
                leading: Text("A200",style:tabstyle,),
                trailing: Text("#FFFF5252",style:tabstyle,),
              ),
            ),
            Container(
              color: Colors.redAccent[400],
              child: ListTile(
                leading: Text("A400",style:tabstyle,),
                trailing: Text("#FFFF1744",style:tabstyle,),
              ),
            ),
            Container(
              color: Colors.redAccent[700],
              child: ListTile(
                leading: Text("A700",style:tabstyle,),
                trailing: Text("#FFD50000",style:tabstyle,),
              ),
            ),
          ],
      ),
    );
  }
}
