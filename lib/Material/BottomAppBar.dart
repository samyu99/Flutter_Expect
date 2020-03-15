import 'package:flutter/material.dart';
import 'package:uidesign/Material/DockedCenter.dart';
import 'package:uidesign/Material/DockedEndDemo.dart';
import 'package:uidesign/Material/FloatingCenter.dart';
import 'package:uidesign/Material/FloatingEnd.dart';
import 'package:uidesign/Material/WithoutNotchDockedCenter.dart';
import 'package:uidesign/Material/WithoutNotchDockedEnd.dart';

class BottomAppBarDemo extends StatefulWidget {
  @override
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
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
  final trailingicon = Icon(Icons.arrow_forward_ios);
  final cardShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Bottom app bar',
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
                      title: Text('Docked-End',
                        style: titlestyle,
                      ),
                      subtitle: Text(
                        "Bottom sheet show docked-end",
                        style: subtitlestyle,
                      ),
                      trailing: trailingicon,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => WithoutNotchDockedEndDemo()));
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
                      title: Text('Docked-center',
                        style: titlestyle,
                      ),
                      subtitle: Text(
                        'Bottom sheet show docked-center',
                        style: subtitlestyle,
                      ),
                      trailing: trailingicon,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>WithoutNotchDockedCenterDemo()));
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
                        title: Text('Floating-center',
                          style: titlestyle,
                        ),
                        subtitle: Text(
                          'Botttom sheet show floating-center',
                          style: subtitlestyle,
                        ),
                        trailing: trailingicon,
                        onTap: () {
                           Navigator.push(context, MaterialPageRoute(
                            builder: (context) => FloatingCenterDemo()));
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
                      title: Text('Floating-end',
                        style: titlestyle,
                      ),
                      subtitle: Text(
                        'Botttom sheet show floating-end',
                        style: subtitlestyle,
                      ),
                      trailing:trailingicon,
                      onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => FloatingEndDemo()));
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
