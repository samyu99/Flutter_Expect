import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main(){
  runApp(MaterialApp(
    home: Dropdowndemo(),
  ));
}
class Dropdowndemo extends StatefulWidget {
  @override
  _DropdowndemoState createState() => _DropdowndemoState();
}

class _DropdowndemoState extends State<Dropdowndemo> {
//  int value;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: true,
        title: Text('DropDown Demo',
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
      body: new ListView(
        children: [
          Center(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new DropdownButton<String>(
                  items: <String>['Clothes', 'Grocery','Fashion','Beauty','Electronics'].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    Toast.show(value, context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                  },
                  hint: Text(
                    "select your Category!",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
