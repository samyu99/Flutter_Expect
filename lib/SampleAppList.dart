import 'package:flutter/material.dart';
import 'package:uidesign/SampleApps/NestedBottomBarTabBar.dart';
import 'package:uidesign/SampleApps/home_page.dart';
import 'package:uidesign/SampleApps/loginpage.dart';
import 'package:uidesign/SampleApps/websocket.dart';

void main() {
  runApp(SampleAppList());
}

class SampleAppList extends StatelessWidget {
  final cardShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  );
  final cardmargin = EdgeInsets.symmetric(vertical: 7.0, horizontal: 12.0);
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
  final trailingicon = Icon(Icons.arrow_forward_ios);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('List of Components',
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
        body: ListView(
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
                    title: Text('Login Page',
                      style: titlestyle,
                    ),
                    subtitle: Text(
                      "Basic logic page",
                      style: subtitlestyle,
                    ),
                    trailing: trailingicon,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => login()));
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
                    title: Text('WebSocket Communication',
                      style: titlestyle,
                    ),
                    subtitle: Text(
                      'Client-server Communication',
                      style: subtitlestyle,
                    ),
                    trailing: trailingicon,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => websocket()));
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
                      title: Text('Chat App',
                        style: titlestyle,
                      ),
                      subtitle: Text(
                        'Display chat screen ',
                        style: subtitlestyle,
                      ),
                      trailing: trailingicon,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => HomePage()));
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
                    title: Text('Nested Bottombar & TabBar',
                      style: titlestyle,
                    ),
                    subtitle: Text(
                      'Display nested tabbar & bottombar navigation ',
                      style: subtitlestyle,
                    ),
                    trailing: trailingicon,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => NestedBottomBarTabBarDemo()));
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
