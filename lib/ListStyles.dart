import 'package:flutter/material.dart';
import 'package:uidesign/Styles/Color.dart';
import 'Styles/Trypography.dart';
void main() => runApp(MaterialApp(home: ListStyle()));

class ListStyle extends StatefulWidget {
  @override
  _ListStyleState createState() => _ListStyleState();
}

class _ListStyleState extends State<ListStyle> {
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
            title: Text('List of Styles',
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
                        title: Text('Colors',
                          style: titlestyle,
                        ),
                        subtitle: Text(
                          "All of the predefined colors",
                          style: subtitlestyle,
                        ),
                        leading: Icon(Icons.format_color_fill, color: Colors.pink[900]),
                        onTap: () {
                           Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Coloritem()));
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
                        title: Text('Trypography',
                          style: titlestyle,
                        ),
                        subtitle: Text(
                          'All of the predefined text styles',
                          style: subtitlestyle,
                        ),
                        leading: Icon(
                            Icons.text_format, color: Colors.pink[900]),
                        onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                            builder: (context) => TypographyDemo()));
                        },
                      ),
                    ),
                  ),
                ),
                /*Center(
                  child: Container(
                    margin: cardmargin,
                    decoration: boxstyle,
                    child: Card(
                      shape: cardShape,
                      color: Colors.white70,
                      elevation: 0.2,
                      child: ListTile(
                        title: Text('2D transformations',
                          style: titlestyle,
                        ),
                        subtitle: Text(
                          'Pan, zoom, rotate',
                          style: subtitlestyle,
                        ),
                        leading: Icon(
                            Icons.grid_on, color: Colors.pink[900]),
                        onTap: () {
                          *//* Navigator.push(context, MaterialPageRoute(
                            builder: (context) => NavigationList()));*//*
                        },
                      ),
                    ),
                  ),
                ),*/
              ],
            ),
          ),
        ),
    );
  }
}
