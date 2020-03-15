import 'package:flutter/material.dart';
import 'package:toast/toast.dart';


void main() => runApp(SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:  AppBar(
          automaticallyImplyLeading: true,
          title: Text('SnackBar Demo',
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
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        color: Colors.pink[900],
       padding: EdgeInsets.all(20.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('This is snackbar'),
            action: SnackBarAction(
              label: 'Action',
              onPressed: () {
                Toast.show("You pressed the snackbar action.", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                // Some code to undo the change.
              },
            ),
          );

          // Find the Scaffold in the widget tree and use
          // it to show a SnackBar.
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('Show SnackBar',style: TextStyle(color: Colors.white,),),
      ),
    );
  }
}