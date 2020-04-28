import 'package:flutter/material.dart';
import 'package:uidesign/Dashboard.dart';
import 'package:uidesign/Material/menu_navigations/header_navigation/main_header_navigation.dart';
class MainMenuNavigations extends StatelessWidget {
  onButtonTap(Widget page, BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Menu Navigations",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pink[900],
        elevation: 5.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            MyMenuButton(
              title: "Header Navigation",
              actionTap: () {
                onButtonTap(MainHeaderNavigation(), context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
