import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LimeColor extends StatelessWidget {

  final tabstyle=TextStyle(color: Colors.black);
  final tabstyle1=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Container(
            color: Colors.lime[50],
            child: ListTile(
              leading: Text("50",style:tabstyle,),
              trailing: Text("#FFF9FBE7",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.lime[100],
            child: ListTile(
              leading: Text("100",style:tabstyle,),
              trailing: Text("#FFF0F4C3",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.lime[200],
            child: ListTile(
              leading: Text("200",style:tabstyle,),
              trailing: Text("#FFE6EE9C",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.lime[300],
            child: ListTile(
              leading: Text("300",style:tabstyle1,),
              trailing: Text("#FFDCE775",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lime[400],
            child: ListTile(
              leading: Text("400",style:tabstyle1,),
              trailing: Text("#FFD4E157",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lime[500],
            child: ListTile(
              leading: Text("500",style:tabstyle1,),
              trailing: Text("#FFCDDC39",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lime[600],
            child: ListTile(
              leading: Text("600",style:tabstyle1,),
              trailing: Text("#FFC0CA33",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lime[700],
            child: ListTile(
              leading: Text("700",style:tabstyle1,),
              trailing: Text("#FFAFB42B",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lime[800],
            child: ListTile(
              leading: Text("800",style:tabstyle1,),
              trailing: Text("#FF9E9D24",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.lime[900],
            child: ListTile(
              leading: Text("900",style:tabstyle1,),
              trailing: Text("#FF827717",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.limeAccent[100],
            child: ListTile(
              leading: Text("A100",style:tabstyle,),
              trailing: Text("#FFF4FF81",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.limeAccent[200],
            child: ListTile(
              leading: Text("A200",style:tabstyle,),
              trailing: Text("#FFEEFF41",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.limeAccent[400],
            child: ListTile(
              leading: Text("A400",style:tabstyle1,),
              trailing: Text("#FFC6FF00",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.limeAccent[700],
            child: ListTile(
              leading: Text("A700",style:tabstyle1,),
              trailing: Text("#FFAEEA00",style:tabstyle1,),
            ),
          ),
        ],
      ),
    );
  }
}
