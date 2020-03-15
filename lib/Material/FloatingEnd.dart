import 'package:flutter/material.dart';

class FloatingEndDemo extends StatefulWidget {
  @override
  _FloatingEndDemoState createState() => _FloatingEndDemoState();
}

class _FloatingEndDemoState extends State<FloatingEndDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Floating-end Demo',
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
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: Container(
            child: FloatingActionButton(
              elevation: 0.2,
              child: const Icon(Icons.add),
              onPressed: () {},
            ),
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.pink[900],
              ),
            ),
            margin: EdgeInsets.only(bottom: 10.0,left: 10.0,right: 10.0),
            child: BottomAppBar(
              color: Colors.pink[900],
              shape: CircularNotchedRectangle(),
              notchMargin: 5.0,
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  //menu
                  IconButton(
                    tooltip:
                    MaterialLocalizations.of(context).openAppDrawerTooltip,
                    icon: Icon(Icons.grid_on,color:Colors.white),
                    onPressed: () {
                    },
                  ),
                  IconButton(
                    // tooltip: GalleryLocalizations.of(context).starterAppTooltipFavorite,
                    icon: const Icon(Icons.search,color:Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite,color:Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }
}
