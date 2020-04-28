import 'package:flutter/material.dart';
import 'package:uidesign/Dashboard.dart';
import 'package:uidesign/Material/scroll_controller/scroll_limit_reached.dart';
import 'package:uidesign/Material/scroll_controller/scroll_movement.dart';
import 'package:uidesign/Material/scroll_controller/scroll_status.dart';
import 'package:uidesign/Material/scroll_controller/scroll_sync/scroll_sync.dart';


class MainScrollController extends StatelessWidget {
  onButtonTap(Widget page, BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScrollController / ScrollNotifiation",
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
              title: "Scroll Limit Reached",
              actionTap: () {
                onButtonTap(ScrollLimitReached(), context);
              },
            ),
            MyMenuButton(
              title: "Scroll Movement",
              actionTap: () {
                onButtonTap(ScrollMovement(), context);
              },
            ),
            MyMenuButton(
              title: "Scroll Status",
              actionTap: () {
                onButtonTap(ScrollStatus(), context);
              },
            ),
            MyMenuButton(
              title: "Scroll Sync",
              actionTap: () {
                onButtonTap(ScrollSync(), context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
