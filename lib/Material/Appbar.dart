import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:Appbar(),
  ));
}
class Appbar extends StatelessWidget {
  final titlestyle = TextStyle(fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink[900],
            title: Text('AppBar Demo',
              style: titlestyle,
            ),
            leading:  IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: new Container(
            margin: EdgeInsets.all(10.0),
            child: Center(
              child: Text('This is the basic App Bar',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300
                ),),
            ),
          ),

        ));

  }
}
