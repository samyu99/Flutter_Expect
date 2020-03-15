import 'package:flutter/material.dart';
import 'PopUpMenu.dart';
import 'Appbar.dart';
import '../ActionWidgets.dart';
import 'TabBar.dart';

void main() {
  runApp(MaterialApp(
    home: AppbarList(),
  ));
}
class AppbarList extends StatelessWidget {
  final cardShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  );
  final cardmargin = EdgeInsets.symmetric(vertical: 7.0);
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar:AppBar(
            automaticallyImplyLeading: true,
            title: Text('AppBar List',
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
          /* AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.pink[900],
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.error),
                color: Colors.pink[900],
                onPressed: () {

                },
              ),
              IconButton(
                icon: Icon(Icons.code),
                color: Colors.pink[900],
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.library_books),
                color: Colors.pink[900],
                onPressed: () {

                },
              ),
            ],
          ),*/
          body:
          Container(
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
                        title: Text('Simple AppBar',
                          style: titlestyle,
                        ),
                        subtitle: Text('Basic AppBar,Action Widgets',
                          style: subtitlestyle,
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                        /*leading: Icon(Icons.apps, color: Colors.pink[900]),*/
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Appbar()));
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
                        title: Text('AppBar with action widgets',
                          style: titlestyle,
                        ),
                        subtitle: Text('Notification,Searchbar',
                          style: subtitlestyle,
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                        /*leading: Icon(
                            Icons.credit_card, color: Colors.pink[900]),*/
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => AppBarAction()));
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
                        title: Text('PopUpMenu',
                          style: titlestyle,
                        ),
                        subtitle: Text('Custom Popupmenu button',
                          style: subtitlestyle,
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                       // leading: Icon(Icons.menu, color: Colors.pink[900]),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => PopUp()));
                        },
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    decoration: boxstyle,
                    margin: cardmargin,
                    child: Card(
                      shape: cardShape,
                      color: Colors.white70,
                      elevation: 0.2,
                      child: ListTile(
                        title: Text('TabBar',
                          style: titlestyle,
                        ),
                        subtitle: Text('TabBar with multiple action ',
                          style: subtitlestyle,
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Tabbar()));
                        },
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),),
                  ),
                ),
              ],
            ),
          ),
      ),);
  }
}

