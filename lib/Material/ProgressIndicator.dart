import 'package:flutter/material.dart';
import 'package:uidesign/Material/ProgressIndicator/CircularPercentIndicator.dart';
import 'package:uidesign/Material/ProgressIndicator/LinearPercentIndicator.dart';

class ProgressIndicatorDemo extends StatefulWidget {
  @override
  _ProgressIndicatorDemoState createState() => _ProgressIndicatorDemoState();
}

class _ProgressIndicatorDemoState extends State<ProgressIndicatorDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Progress Indicator List',
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            RaisedButton(
              color: Colors.pink[900],
              padding: EdgeInsets.all(20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              child: Text("LinearPercent Indicator",style: TextStyle(color: Colors.white),),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => LinearPercentIndicatorDemo()));
              }
            ),
                SizedBox(
                  height: 50.0,
                ),
                RaisedButton(
                    color: Colors.pink[900],
                    padding: EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    child: Text("CircularPercent Indicator",style: TextStyle(color: Colors.white),),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => CircularPercentIndicatorDemo()));
                    }
                ),
          ],
        ),
      ),
    ),);
  }
}
