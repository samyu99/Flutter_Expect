import 'package:flutter/material.dart';
import 'package:uidesign/Material/BottomAppBar.dart';
import 'package:uidesign/Material/NotchDockedList.dart';

class NotchDemo extends StatefulWidget {
  @override
  _NotchDemoState createState() => _NotchDemoState();
}

class _NotchDemoState extends State<NotchDemo> {
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
          title: Text('Floating action button list',
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
                      title: Text('With Notch',
                        style: titlestyle,
                      ),
                      subtitle: Text(
                        "Bottom sheet show floatingAction button with notch",
                        style: subtitlestyle,
                      ),
                      trailing: trailingicon,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => NotchDockedDemo()));
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
                      title: Text('Without Notch',
                        style: titlestyle,
                      ),
                      subtitle: Text(
                        'Bottom sheet show floatingAction button without notch',
                        style: subtitlestyle,
                      ),
                      trailing: trailingicon,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => BottomAppBarDemo()));
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
