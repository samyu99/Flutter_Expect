import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Deep_OrangeColor extends StatelessWidget {

  final tabstyle=TextStyle(color: Colors.black);
  final tabstyle1=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(7.0),
        children: <Widget>[
          Container(
            color: Colors.deepOrange[50],
            child: ListTile(
              leading: Text("50",style:tabstyle,),
              trailing: Text("#FFFBE9E7",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.deepOrange[100],
            child: ListTile(
              leading: Text("100",style:tabstyle,),
              trailing: Text("#FFFFCCBC",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.deepOrange[200],
            child: ListTile(
              leading: Text("200",style:tabstyle,),
              trailing: Text("#FFFFAB91",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.deepOrange[300],
            child: ListTile(
              leading: Text("300",style:tabstyle1,),
              trailing: Text("#FFFF8A65",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.deepOrange[400],
            child: ListTile(
              leading: Text("400",style:tabstyle1,),
              trailing: Text("#FFFF7043",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.deepOrange[500],
            child: ListTile(
              leading: Text("500",style:tabstyle1,),
              trailing: Text("#FFFF5722",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.deepOrange[600],
            child: ListTile(
              leading: Text("600",style:tabstyle1,),
              trailing: Text("#FFF4511E",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.deepOrange[700],
            child: ListTile(
              leading: Text("700",style:tabstyle1,),
              trailing: Text("#FFE64A19",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.deepOrange[800],
            child: ListTile(
              leading: Text("800",style:tabstyle1,),
              trailing: Text("#FFD84315",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.deepOrange[900],
            child: ListTile(
              leading: Text("900",style:tabstyle1,),
              trailing: Text("#FFBF360C",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.deepOrangeAccent[100],
            child: ListTile(
              leading: Text("A100",style:tabstyle,),
              trailing: Text("#FFFF9E80",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.deepOrangeAccent[200],
            child: ListTile(
              leading: Text("A200",style:tabstyle,),
              trailing: Text("#FFFF6E40",style:tabstyle,),
            ),
          ),
          Container(
            color: Colors.deepOrangeAccent[400],
            child: ListTile(
              leading: Text("A400",style:tabstyle1,),
              trailing: Text("#FFFF3D00",style:tabstyle1,),
            ),
          ),
          Container(
            color: Colors.deepOrangeAccent[700],
            child: ListTile(
              leading: Text("A700",style:tabstyle1,),
              trailing: Text("#FFDD2C00",style:tabstyle1,),
            ),
          ),
        ],
      ),
    );
  }
}
