import 'package:flutter/material.dart';
import 'gridview.dart';
import 'samplegrid.dart';

void main() {
  runApp(MaterialApp(
    home: Gridlist(),
  ));
}

class Gridlist extends StatelessWidget {
  final cardShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  );
  final cardmargin = EdgeInsets.symmetric(vertical: 7.0,horizontal: 12.0);
  final boxstyle = BoxDecoration(
    border: Border.all(color: Colors.pink[900]),
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text(
            'Grid View',
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
        body: ListView(
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
                    title: Text(
                      'Simple Grid View',
                      style: titlestyle,
                    ),
                    subtitle: Text(
                      'Basic gridview with text',
                      style: subtitlestyle,
                    ),
                    /*leading: Icon(Icons.apps, color: Colors.pink[900]),*/
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Samplegrid()));
                    },
                    trailing: Icon(Icons.arrow_forward_ios),
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
                    title: Text(
                      'Row and Column Layout',
                      style: titlestyle,
                    ),
                    subtitle: Text(
                      'Images,Text,Card,Gesture tap',
                      style: subtitlestyle,
                    ),
                    /*leading: Icon(Icons.credit_card, color: Colors.pink[900]),*/
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Gridview()));
                    },
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
