import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GreyColor extends StatelessWidget {

  final tabstyle=TextStyle(color: Colors.black);
  final tabstyle1=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Container(
            color: Colors.grey[50],
            child: ListTile(
              leading: Text("50",style:tabstyle,),
              trailing: Text("#FFFAFAFA",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.grey[100],
            child: ListTile(
              leading: Text("100",style:tabstyle,),
              trailing: Text("#FFF5F5F5",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Text("200",style:tabstyle,),
              trailing: Text("#FFEEEEEE",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.grey[300],
            child: ListTile(
              leading: Text("300",style:tabstyle1,),
              trailing: Text("#FFE0E0E0",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.grey[400],
            child: ListTile(
              leading: Text("400",style:tabstyle1,),
              trailing: Text("#FFBDBDBD",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.grey[500],
            child: ListTile(
              leading: Text("500",style:tabstyle1,),
              trailing: Text("#FF9E9E9E",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.grey[600],
            child: ListTile(
              leading: Text("600",style:tabstyle1,),
              trailing: Text("#FF757575",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.grey[700],
            child: ListTile(
              leading: Text("700",style:tabstyle1,),
              trailing: Text("#FF616161",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.grey[800],
            child: ListTile(
              leading: Text("800",style:tabstyle1,),
              trailing: Text("#FF424242",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.grey[900],
            child: ListTile(
              leading: Text("900",style:tabstyle1,),
              trailing: Text("#FF212121",style:tabstyle1,),
            ),
          ),
        ],
      ),
    );
  }
}
