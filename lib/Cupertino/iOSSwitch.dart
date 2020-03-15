import 'package:flutter/material.dart';
import 'package:toast/toast.dart';


class iOSSwitchDemo extends StatefulWidget {
  @override
  _iOSSwitchDemoState createState() => _iOSSwitchDemoState();
}

class _iOSSwitchDemoState extends State<iOSSwitchDemo> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Switch',
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
        body: Center(
            child: Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
                if(value){
                  Toast.show("Switched On", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                }
                else{
                  Toast.show("Switched Off", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                }
              },
              activeTrackColor: Colors.pink[800],
              activeColor: Colors.pink[900],
            ),
          ),
        ),
    );
  }
}
