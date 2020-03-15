import 'package:flutter/material.dart';
import 'Navigation.dart';
import 'package:uidesign/Material//UserAccountDrawer.dart';

void main() {
  runApp(MaterialApp(
    home: NavigationList(),
  ));
}

class NavigationList extends StatelessWidget {
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
              backgroundColor: Colors.pink[900],
              title: Text('Drawer List',
                style: titlestyle,
              ),
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
                          title: Text('Drawer Header',
                            style: titlestyle,
                          ),
                          subtitle: Text(
                            "Display list of items in slide drawer",
                            style: subtitlestyle,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Navigation()));
                          },
                          trailing: Icon(Icons.arrow_forward_ios),
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
                          title: Text('UserAccountDrawer Header',
                            style: titlestyle,
                          ),
                          subtitle: Text(
                            'Display user name and mailid in the drawer',
                            style: subtitlestyle,
                          ),
                          onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                            builder: (context) => UserAccount()));
                          },
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ));
  }
}