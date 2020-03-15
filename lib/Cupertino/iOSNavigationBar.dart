import 'package:flutter/material.dart';
import 'package:uidesign/iOSNavigation/Item1.dart';
import 'package:uidesign/iOSNavigation/Item2.dart';
import 'package:uidesign/iOSNavigation/Item3.dart';
import 'package:uidesign/iOSNavigation/Item4.dart';
import 'package:uidesign/iOSNavigation/Item5.dart';
import 'package:uidesign/iOSNavigation/Item6.dart';
import 'package:uidesign/iOSNavigation/Item7.dart';
import 'package:uidesign/iOSNavigation/Item8.dart';
import 'package:uidesign/iOSNavigation/Item9.dart';
import 'package:uidesign/iOSNavigation/Item10.dart';

class iOSNavigationBarDemo extends StatefulWidget {
  @override
  _iOSNavigationBarDemoState createState() => _iOSNavigationBarDemoState();
}

class _iOSNavigationBarDemoState extends State<iOSNavigationBarDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
      automaticallyImplyLeading: true,
      title: Text(
        'NavigationBar Demo',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.pink[900],
      actions: <Widget>[],
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.white,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      ),
        body:ListView(
          padding: EdgeInsets.all(8.0),
          children: <Widget>[
            ListTile(
              title: Text("Item 1"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Item1Demo()));
              },
            ),
            ListTile(
              title: Text("Item 2"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Item2Demo()));
              },
            ),
            ListTile(
              title: Text("Item 3"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Item3Demo()));
              },
            ),
            ListTile(
              title: Text("Item 4"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Item4Demo()));
              },
            ),
            ListTile(
              title: Text("Item 5"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Item5Demo()));
              },
            ),
            ListTile(
              title: Text("Item 6"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Item6Demo()));
              },
            ),
            ListTile(
              title: Text("Item 7"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Item7Demo()));
              },
            ),
            ListTile(
              title: Text("Item 8"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Item8Demo()));
              },
            ),
            ListTile(
              title: Text("Item 9"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Item9Demo()));
              },
            ),
            ListTile(
              title: Text("Item 10"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Item10Demo()));
              },
            ),
          ],
        ),
    ),
    );
  }
}
