import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndigoColor extends StatelessWidget {
  final tabstyle=TextStyle(color: Colors.black);
  final tabstyle1=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Container(
            color: Colors.indigo[50],
            child: ListTile(
              leading: Text("50",style:tabstyle,),
              trailing: Text("#FFE8EAF6",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.indigo[100],
            child: ListTile(
              leading: Text("100",style:tabstyle,),
              trailing: Text("#FFC5CAE9",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.indigo[200],
            child: ListTile(
              leading: Text("200",style:tabstyle,),
              trailing: Text("#FF9FA8DA",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.indigo[300],
            child: ListTile(
              leading: Text("300",style:tabstyle1,),
              trailing: Text("#FF7986CB",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.indigo[400],
            child: ListTile(
              leading: Text("400",style:tabstyle1,),
              trailing: Text("#FF5C6BC0",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.indigo[500],
            child: ListTile(
              leading: Text("500",style:tabstyle1,),
              trailing: Text("#FF3F51B5",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.indigo[600],
            child: ListTile(
              leading: Text("600",style:tabstyle1,),
              trailing: Text("#FF3949AB",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.indigo[700],
            child: ListTile(
              leading: Text("700",style:tabstyle1,),
              trailing: Text("#FF303F9F",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.indigo[800],
            child: ListTile(
              leading: Text("800",style:tabstyle1,),
              trailing: Text("#FF283593",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.indigo[900],
            child: ListTile(
              leading: Text("900",style:tabstyle1,),
              trailing: Text("#FF1A237E",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.indigoAccent[100],
            child: ListTile(
              leading: Text("A100",style:tabstyle,),
              trailing: Text("#FF8C9EFF",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.indigoAccent[200],
            child: ListTile(
              leading: Text("A200",style:tabstyle,),
              trailing: Text("#FF536DFE",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.indigoAccent[400],
            child: ListTile(
              leading: Text("A400",style:tabstyle1,),
              trailing: Text("#FF3D5AFE",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.indigoAccent[700],
            child: ListTile(
              leading: Text("A700",style:tabstyle1,),
              trailing: Text("#FF304FFE",style:tabstyle1,),
            ),
          ),
        ],
      ),
    );
  }
}
