import 'package:flutter/material.dart';
import 'package:uidesign/Dashboard.dart';
import 'package:uidesign/Styles/Animation/animations/circular_list/circular_list_page.dart';
import 'package:uidesign/Styles/Animation/animations/custom_appbar/my_custom_appbar_page.dart';
import 'package:uidesign/Styles/Animation/animations/foldable/foldable_animation.dart';
import 'package:uidesign/Styles/Animation/animations/list_details/list_page.dart';
import 'package:uidesign/Styles/Animation/animations/menu_exploration/main_menu_exploration.dart';
import 'package:uidesign/Styles/Animation/animations/split_image/main_split_image.dart';
import 'package:uidesign/Styles/Animation/animations/split_widget/main_split_widget.dart';
import 'package:uidesign/Styles/Animation/animations/turn_on_the_light/turn_on_the_light.dart';

import 'custom_sliverheader/custom_sliver_header.dart';
import 'hide_my_widgets/main_hide_my_widgets.dart';

class MainAnimations extends StatefulWidget {
  @override
  MainAnimationsState createState() {
    return MainAnimationsState();
  }
}

class MainAnimationsState extends State<MainAnimations> {
  onButtonTap(Widget page) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Animations",
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
              title: "Foldable Page",
              actionTap: () {
                onButtonTap(FoldablePage());
              },
            ),
            MyMenuButton(
              title: "List - Detail Page",
              actionTap: () {
                onButtonTap(ListPage());
              },
            ),
            MyMenuButton(
              title: "Circular List Page",
              actionTap: () {
                onButtonTap(CircularListPage());
              },
            ),
            MyMenuButton(
              title: "My Custom AppBar Page",
              actionTap: () {
                onButtonTap(MyCustomAppBarPage());
              },
            ),
            MyMenuButton(
              title: "My Custom Sliver Header",
              actionTap: () {
                onButtonTap(CustomSliverHeader());
              },
            ),
            MyMenuButton(
              title: "Split Widget",
              actionTap: () {
                onButtonTap(MainSplitWidget());
              },
            ),
            MyMenuButton(
              title: "Turn on the light",
              actionTap: () {
                onButtonTap(TurnOnTheLight());
              },
            ),
            MyMenuButton(
              title: "Hide my widgets",
              actionTap: () {
                onButtonTap(MainHideMyWidgets());
              },
            ),
            MyMenuButton(
              title: "Menu Exploration",
              actionTap: () {
                onButtonTap(MainMenuExploration());
              },
            ),
            MyMenuButton(
              title: "Split Image",
              actionTap: () {
                onButtonTap(MainSplitImage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
