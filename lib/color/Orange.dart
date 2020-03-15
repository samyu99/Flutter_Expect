import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrangeColor extends StatelessWidget {

  final tabstyle=TextStyle(color: Colors.black);
  final tabstyle1=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Container(
            color: Colors.orange[50],
            child: ListTile(
              leading: Text("50",style:tabstyle,),
              trailing: Text("#FFFFF3E0",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.orange[100],
            child: ListTile(
              leading: Text("100",style:tabstyle,),
              trailing: Text("#FFFFE0B2",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.orange[200],
            child: ListTile(
              leading: Text("200",style:tabstyle,),
              trailing: Text("#FFFFCC80",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.orange[300],
            child: ListTile(
              leading: Text("300",style:tabstyle1,),
              trailing: Text("#FFFFB74D",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.orange[400],
            child: ListTile(
              leading: Text("400",style:tabstyle1,),
              trailing: Text("#FFFFA726",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.orange[500],
            child: ListTile(
              leading: Text("500",style:tabstyle1,),
              trailing: Text("#FFFF9800",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.orange[600],
            child: ListTile(
              leading: Text("600",style:tabstyle1,),
              trailing: Text("#FFFB8C00",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.orange[700],
            child: ListTile(
              leading: Text("700",style:tabstyle1,),
              trailing: Text("#FFF57C00",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.orange[800],
            child: ListTile(
              leading: Text("800",style:tabstyle1,),
              trailing: Text("#FFEF6C00",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.orange[900],
            child: ListTile(
              leading: Text("900",style:tabstyle1,),
              trailing: Text("#FFE65100",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.orangeAccent[100],
            child: ListTile(
              leading: Text("A100",style:tabstyle,),
              trailing: Text("#FFFFD180",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.orangeAccent[200],
            child: ListTile(
              leading: Text("A200",style:tabstyle,),
              trailing: Text("#FFFFAB40",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.orangeAccent[400],
            child: ListTile(
              leading: Text("A400",style:tabstyle1,),
              trailing: Text("#FFFF9100",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.orangeAccent[700],
            child: ListTile(
              leading: Text("A700",style:tabstyle1,),
              trailing: Text("#FFFF6D00",style:tabstyle1,),
            ),
          ),
        ],
      ),
    );
  }
}
