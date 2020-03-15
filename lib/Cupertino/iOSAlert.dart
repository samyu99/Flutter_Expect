import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class iOSAlertDemo extends StatefulWidget {
  @override
  _iOSAlertDemoState createState() => _iOSAlertDemoState();
}

class _iOSAlertDemoState extends State<iOSAlertDemo> {
  void _showcontent() {
    showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return Opacity(
          opacity: 0.9,
          child: new AlertDialog(
            backgroundColor: Colors.blueGrey[100],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                 Center(
                   child: Text('Discard draft?',
                   style: TextStyle(
                   fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                   fontSize: 16,
                   color: Colors.black,
                 ),
              ),
            ),
                  Divider(
                    height: 20.0 ,
                    thickness: 1,
                  )
                ],
              ),
            ),
            actions: <Widget>[
              Center(
                child: FlatButton(
                  child: Text('Discard',
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Toast.show("You selected:""Discard", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                  },
                ),
              ),
              VerticalDivider(
                width: 95.0,
                thickness: 20,
              ),
              Center(
                child: FlatButton(
                  child: Text('Cancel',
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Toast.show("You selected:""Cancel", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text('Alert Demo',
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
            child:RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.symmetric(horizontal: 45.0,vertical: 16.0),
              child: Text("Show Alert",style: TextStyle(
                color: Colors.white,
              ),),
              color: Colors.pink[900],
              onPressed: (){
                _showcontent();
              },
            ),
          ),
        ),
    );
  }
}
