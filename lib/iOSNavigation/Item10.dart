import 'package:flutter/material.dart';

class Item10Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
      automaticallyImplyLeading: true,
      title: Text('Item 10',
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
    ),
    );
  }
}
