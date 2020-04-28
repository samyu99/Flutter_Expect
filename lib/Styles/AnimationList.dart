import 'package:flutter/material.dart';
import 'package:uidesign/Styles/Animation/animations/main_animations.dart';
import 'package:uidesign/Styles/Animation/hero_animations/main_hero_animations.dart';
import 'package:uidesign/Styles/Color.dart';
void main() => runApp(MaterialApp(home: AnimationList()));

class AnimationList extends StatefulWidget {
  @override
  _AnimationListState createState() => _AnimationListState();
}

class _AnimationListState extends State<AnimationList> {
  final cardmargin = EdgeInsets.symmetric(vertical: 7.0,horizontal: 12.0);
  final boxstyle = BoxDecoration(
    border: Border.all(
        color: Colors.pink[900]
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(20.0),
      //         <--- border radius here
    ),
  );
  final titlestyle = TextStyle(fontSize: 20.0);
  final subtitlestyle = TextStyle(
    fontSize: 12.0,
    color: Colors.pink[900],
  );
  final trailingicon = Icon(Icons.arrow_drop_down);
  final cardShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Animation List',
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
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
          child: ListView(
            children: <Widget>[
              Center(
                child: Container(
                  margin: cardmargin,
                  decoration: boxstyle,
                  child: Card(
                    shape: cardShape,
                    color: Colors.white70,
                    elevation: 0.2,
                    child: ListTile(
                      title: Text('Hero Animations',
                        style: titlestyle,
                      ),
                      subtitle: Text(
                        "Hero Animations",
                        style: subtitlestyle,
                      ),
                      leading: Icon(Icons.art_track, color: Colors.pink[900]),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>  MainHeroAnimationsPage(),));
                      },
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: cardmargin,
                  decoration: boxstyle,
                  child: Card(
                    shape: cardShape,
                    color: Colors.white70,
                    elevation: 0.2,
                    child: ListTile(
                      title: Text('Animations',
                        style: titlestyle,
                      ),
                      subtitle: Text(
                        "Foldable Page, List - Detail Page, Circular List Page, My Custom AppBar Page, My Custom Sliver Header, Split Widget, Turn on the light, Hide my widgets, Menu Exploration",
                        style: subtitlestyle,
                      ),
                      leading: Icon(Icons.fastfood, color: Colors.pink[900]),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>  MainAnimations(),));
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
