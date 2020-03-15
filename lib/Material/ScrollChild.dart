import 'package:flutter/material.dart';
import 'Verticalscroll.dart';
import 'Horizontalscroll.dart';

void main() {
  runApp(MaterialApp(
      home: ScrollChild()));
}

class ScrollChild extends StatelessWidget {
  final cardShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  );
  final cardmargin = EdgeInsets.symmetric(vertical: 7.0, horizontal: 12.0);
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
  final trailingicon = Icon(Icons.arrow_drop_down);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('ScrollView demo',
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
                  title: Text('Vertical ScrollView',
                    style: titlestyle,
                  ),
                  subtitle: Text(
                    "Vertical scrolling",
                    style: subtitlestyle,
                  ),
                  /*leading: Icon(Icons.apps, color: Colors.pink[900]),*/
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => VerticalScroll()));
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
                    title: Text('Horizontal ScrollView ',
                      style: titlestyle,
                    ),
                    subtitle: Text(
                      'Horizontal scrolling',
                      style: subtitlestyle,
                    ),
                    /*leading: Icon(Icons.credit_card, color: Colors.pink[900]),*/
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HorizontalScroll()));
                    },
                    trailing: Icon(Icons.arrow_forward_ios),

                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
