import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LinearPercentIndicatorDemo extends StatefulWidget {
  @override
  _LinearPercentIndicatorDemoState createState() =>
      _LinearPercentIndicatorDemoState();
}

class _LinearPercentIndicatorDemoState
    extends State<LinearPercentIndicatorDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text('LinearPercent Indicator Demo',
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
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: LinearProgressIndicator(
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 90.0,vertical: 15.0),
                    child: new LinearPercentIndicator(
                      width: 140.0,
                      lineHeight: 14.0,
                      percent: 0.5,
                      center: Text(
                        "50.0%",
                        style: new TextStyle(fontSize: 12.0),
                      ),
                      trailing: Icon(Icons.mood),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: new LinearPercentIndicator(
                    width: 150.0,
                    animation: true,
                    animationDuration: 1000,
                    lineHeight: 20.0,
                    leading: new Text("left content"),
                    trailing: new Text("right content"),
                    percent: 0.2,
                    center: Text("20.0%"),
                    linearStrokeCap: LinearStrokeCap.butt,
                    progressColor: Colors.red,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: new LinearPercentIndicator(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width - 50,
                    animation: true,
                    lineHeight: 20.0,
                    animationDuration: 2000,
                    percent: 0.9,
                    center: Text("90.0%"),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: Colors.greenAccent,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: new LinearPercentIndicator(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width - 50,
                    animation: true,
                    lineHeight: 20.0,
                    animationDuration: 2500,
                    percent: 0.8,
                    center: Text("80.0%"),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: Colors.green,
                  ),
                ),

              ],
            ),
          ),
        ),
    );
  }
}
