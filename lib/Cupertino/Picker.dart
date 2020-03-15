import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(CupertinoExample());
}

class CupertinoExample extends StatefulWidget {
  @override
  _CupertinoExampleState createState() => _CupertinoExampleState();
}

class _CupertinoExampleState extends State<CupertinoExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ExamplePage());
  }
}

class ExamplePage extends StatefulWidget {
  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  DateTime setDate = DateTime.now();
  Duration initialtimer = new Duration();
  int selectitem = 1;

  Widget datetime() {
    return CupertinoDatePicker(
      use24hFormat: true,
      maximumDate: new DateTime(2030, 12, 30),
      minimumYear: 2010,
      maximumYear: 2030,
      minuteInterval: 1,
      mode: CupertinoDatePickerMode.dateAndTime,
      initialDateTime: DateTime.now(),
      onDateTimeChanged: (DateTime newdate) {
        setState(() {
          setDate = newdate;
        });
      },
    );
  }

  Widget time() {
    return CupertinoTimerPicker(
      mode: CupertinoTimerPickerMode.hms,
      minuteInterval: 1,
      secondInterval: 1,
      initialTimerDuration: initialtimer,
      onTimerDurationChanged: (Duration changedtimer) {
        setState(() {
          initialtimer = changedtimer;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Picker Demo',
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.red)
                ),
                child: Text(
                  "Cupertino date Picker",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.redAccent,
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext builder) {
                        return Container(height: MediaQuery
                            .of(context)
                            .copyWith()
                            .size
                            .height / 3,
                            child: datetime());
                      });
                },
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.greenAccent),
                ),
                child: Text("Cupertino Time Picker",
                  style: TextStyle(color: Colors.white),),
                color: Colors.greenAccent,
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext builder) {
                        return Container(
                            height:
                            MediaQuery
                                .of(context)
                                .copyWith()
                                .size
                                .height /
                                3,
                            child: time());
                      });
                },
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.blueAccent),
                ),
                child: Text("Custom Picker",
                  style: TextStyle(color: Colors.white),),
                color: Colors.blueAccent,
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext builder) {
                        return Scaffold(
                            appBar: AppBar(
                              title: Text(
                                "Cupertino Picker",
                                textAlign: TextAlign.justify,
                              ),
                              backgroundColor: Colors.pink[900],
                              actions: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.send),
                                  onPressed: () {},
                                )
                              ],
                            ),
                            body: Container(
                              child: CupertinoPicker(
                                magnification: 1.5,
                                backgroundColor: Colors.black87,
                                children: <Widget>[
                                  Text(
                                    "TextWidget",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  MaterialButton(
                                    child: Text(
                                      "Button Widget",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    color: Colors.redAccent,
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.home),
                                    color: Colors.white,
                                    iconSize: 40,
                                    onPressed: () {},
                                  )
                                ],
                                itemExtent: 50,
                                //height of each item
                                looping: true,
                                onSelectedItemChanged: (int index) {
                                  selectitem = index;
                                },
                              ),
                            ));
                      });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}