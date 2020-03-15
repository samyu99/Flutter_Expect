import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  Widget openBottomDrawer() {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: FloatingActionButton(
              elevation: 0.2,
              child: const Icon(Icons.add),
            ),
          ),
          Center(
            child: Text("Header"),
          ),
          Divider(
            height: 10.0,
          ),
          //Add menu item to edit
          const ListTile(
            leading: const Icon(Icons.mode_edit),
            title: const Text('Edit'),
          ),
          const ListTile(
            //Add menu item to add a new item
            leading: const Icon(Icons.add),
            title: const Text('Add'),
          ),
          Divider(
            height: 10.0,
          ),
          const ListTile(
            //Add menu item to add a new item
            title: const Text('Item1'),
          ),
          const ListTile(
            //Add menu item to add a new item
            title: const Text('Item2'),
          ),  const ListTile(
            //Add menu item to add a new item
            title: const Text('Item3'),
          ),  const ListTile(
            //Add menu item to add a new item
            title: const Text('Item4'),
          ),
          const ListTile(
            //Add menu item to add a new item
            title: const Text('Item5'),
          ),
          const ListTile(
            //Add menu item to add a new item
            title: const Text('Item6'),
          ),  const ListTile(
            //Add menu item to add a new item
            title: const Text('Item7'),
          ),  const ListTile(
            //Add menu item to add a new item
            title: const Text('Item8'),
          ),
          const ListTile(
            //Add menu item to add a new item
            title: const Text('Item9'),
          ),  const ListTile(
            //Add menu item to add a new item
            title: const Text('Item10'),
          ),


        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text('Persistent bottom sheet',
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                  color: Colors.pink[900],
                  padding: EdgeInsets.all(20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child:Text('Show Bottom Sheet',style: TextStyle(color: Colors.white,),),
                  onPressed: () {
                    showModalBottomSheet<Null>(
                      context: context,
                      builder: (BuildContext context) => openBottomDrawer(),
                    );
                  }
              ),
            ),
          ), 
      ),
    );
  }
}
