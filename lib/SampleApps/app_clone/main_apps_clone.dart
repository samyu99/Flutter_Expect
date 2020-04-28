import 'package:flutter/material.dart';
import 'package:uidesign/Dashboard.dart';
import 'package:uidesign/SampleApps/app_clone/android_messages/android_messages_page.dart';
import 'package:uidesign/SampleApps/app_clone/photo_concept/photo_concept_page.dart';
import 'package:uidesign/SampleApps/app_clone/shoes_store/shoes_store_page.dart';
import 'package:uidesign/SampleApps/app_clone/sports_store/sports_store_page.dart';
import 'package:uidesign/SampleApps/app_clone/twitter_profile/twitter_profile_page.dart';

import 'movies_concept/movies_concept_page.dart';

class MainAppsClone extends StatefulWidget {
  @override
  MainAppCloneState createState() {
    return new MainAppCloneState();
  }
}

class MainAppCloneState extends State<MainAppsClone> {
  onButtonTap(Widget page) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Apps Clone",
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
              title: "Android Messages Page",
              actionTap: () {
                onButtonTap(AndroidMessagesPage());
              },
            ),
            MyMenuButton(
              title: "Twitter Profile Page",
              actionTap: () {
                onButtonTap(TwitterProfilePage());
              },
            ),
            MyMenuButton(
              title: "Movies Concept",
              actionTap: () {
                onButtonTap(MoviesConceptPage());
              },
            ),
            MyMenuButton(
              title: "Photo Concept",
              actionTap: () {
                onButtonTap(PhotoConceptPage());
              },
            ),
            MyMenuButton(
              title: "Sports Store",
              actionTap: () {
                onButtonTap(SportsStorePage());
              },
            ),
            MyMenuButton(
              title: "Shoes Store",
              actionTap: () {
                onButtonTap(ShoesStorePage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
