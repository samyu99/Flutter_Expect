import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class iOSButtonDemo extends StatefulWidget {
  @override
  _iOSButtonDemoState createState() => _iOSButtonDemoState();
}

class _iOSButtonDemoState extends State<iOSButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text(
            'Button Demo',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.pink[900],
          actions: <Widget>[],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.pink[900]),
                  ),
                  child: Text('I am FlatButton'),
                  onPressed: () {
                    Toast.show("You tapped on FlatButton", context,
                        duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                  },
                ),
              RaisedButton(
                  child: Text('I am RaisedButton'),
                  onPressed: () {
                    Toast.show("You tapped on RaisedButton", context,
                        duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                  },
                ),
                FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    Toast.show("You tapped on FloatingActionButton", context,
                        duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                  },
                ),
                /*FloatingActionButton.extended(
                  icon: Icon(Icons.add),
                  label: Text('I am FloatingActionButton Extended'),
                  onPressed: () {
                    Toast.show("You tapped on FloatingActionButton", context,
                        duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                  },
                ),*/
                 IconButton(
                  icon: Icon(Icons.volume_up,color: Colors.pink[900],),
                  iconSize: 40.0,
                  tooltip: 'Increase volume by 10%',
                  onPressed: () {
                    Toast.show("Volume button clicked", context,
                        duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
