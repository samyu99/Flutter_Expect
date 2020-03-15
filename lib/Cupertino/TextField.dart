import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text('Text Field',
              style: TextStyle(
                  color: Colors.white
              ),),
            backgroundColor: Colors.pink[900],
            actions: <Widget>[
            ],
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
            padding: EdgeInsets.all(20.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                TextField(
                  obscureText: true,
                  autocorrect: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                    labelText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 13.0,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                    labelText: 'Password',
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    /*border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),*/
                    labelText: 'Pin',
                    icon: Icon(Icons.lock_open,color:Colors.pink[900]),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
