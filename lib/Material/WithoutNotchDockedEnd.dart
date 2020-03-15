import 'package:flutter/material.dart';

class WithoutNotchDockedEndDemo extends StatefulWidget {
  @override
  _WithoutNotchDockedEndDemoState createState() => _WithoutNotchDockedEndDemoState();
}

class _WithoutNotchDockedEndDemoState extends State<WithoutNotchDockedEndDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Docked-end Demo',
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
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
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
              color: Colors.white,
            ),
          ),
          margin: EdgeInsets.only(bottom: 8.0),
          child: BottomAppBar(
            color: Colors.pink[900],
            /*shape: CircularNotchedRectangle(),*/
            notchMargin: 5.0,
            child: new Row(
              mainAxisSize: MainAxisSize.min,
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
