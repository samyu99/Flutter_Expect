import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cardviewdemo extends StatefulWidget {
  @override
  _CardviewdemoState createState() => _CardviewdemoState();
}

class _CardviewdemoState extends State<Cardviewdemo> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme
        .of(context)
        .colorScheme;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('CardView Demo',
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
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("Without Image",
                    style: TextStyle(fontWeight: FontWeight.w500),),
                  SizedBox(
                    height: 15.0,
                  ),
                  Center(
                    child: new Card(
                      color: Colors.white70,
                      child: ListTile(
                        title: Text(
                          "Introduction to Driving",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                        subtitle: Row(
                          children: <Widget>[
                            Icon(Icons.linear_scale, color: Colors.red),
                            Text(" Intermediate",
                                style: TextStyle(color: Colors.black))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "Normal", style: TextStyle(fontWeight: FontWeight.w500),),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: <Widget>[
                            Card(
                              clipBehavior: Clip.antiAlias,

                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.white)
                              ),
                              child: Image.asset("assets/images/normalcard.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              color: Colors.white70.withOpacity(0.4),
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                Text("Tawang, Arunachal Pradesh",
                                    style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.w700)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text("Tawang, a paradise in North-East India",
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black,)),
                        ButtonBar(
                          alignment: MainAxisAlignment.start,
                          children: <Widget>[
                            FlatButton(
                              child: Text('SHARE'),
                              textColor: Colors.amber.shade500,
                              onPressed: () {
                                print('pressed');
                              },
                            ),
                            FlatButton(
                              child: Text('EXPLORE'),
                              textColor: Colors.amber.shade500,
                              onPressed: () {
                                print('pressed');
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "Tappable", style: TextStyle(fontWeight: FontWeight.w500),),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    width: 300,
                    height: 490,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: <Widget>[
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.white)
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: InkWell(
                                child: Image.asset(
                                  "assets/images/tappablecard.jpg",
                                  fit: BoxFit.cover,
                                ),
                                onTap: () {
                                  print('Card was tapped');
                                },
                                splashColor: Theme
                                    .of(context)
                                    .colorScheme
                                    .onSurface
                                    .withOpacity(0.12),
                                // Generally, material cards do not have a highlight overlay.
                                highlightColor: Colors.white70,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text("Fashion Photography",
                                      style: TextStyle(color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20.0)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Oliver Oettli | Turquoise",
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.black,
                                  fontSize: 15.0)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "Selectable (long press)",
                    style: TextStyle(fontWeight: FontWeight.w500),),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: <Widget>[
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.white)
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: InkWell(
                                child: Image.asset(
                                  "assets/images/selectablecard.jpg",
                                  fit: BoxFit.cover,
                                ),
                                onLongPress: () {
                                  print('Selectable card state changed');
                                  setState(() {
                                    _isSelected = !_isSelected;
                                  });
                                },
                                splashColor: Theme
                                    .of(context)
                                    .colorScheme
                                    .onSurface
                                    .withOpacity(0.12),
                                // Generally, material cards do not have a highlight overlay.
                                highlightColor: Colors.red,
                              ),
                            ),
                            Stack(
                              children: <Widget>[
                                Container(
                                  color: _isSelected
                                      ? colorScheme.primary.withOpacity(0.08)
                                      : Colors.transparent,
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.check_circle,
                                      color: _isSelected
                                          ? colorScheme.primary
                                          : Colors.transparent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text("Minions",
                                      style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20.0)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Minions Soft Toy",
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.black,
                                  fontSize: 15.0)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ),
        ),
      ),
    );
  }
}