import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uidesign/Material/BottomAppBar.dart';
import 'package:uidesign/Material/BottomAppBarList.dart';
import 'package:uidesign/Material/BottomSheet.dart';
import 'package:uidesign/Material/PickerAndro.dart';
import 'package:uidesign/Material/ProgressIndicator.dart';
import 'package:uidesign/Material/SelectionControl.dart';
import 'package:uidesign/Material/SnackBar.dart';
import 'Material/AppBarList.dart';
import 'package:uidesign/Material/Carouseldemo.dart';
import 'Material/Dropdownbutton.dart';
import 'Material/NavigationList.dart';
import 'package:uidesign/Material/ScrollChild.dart';
import 'package:uidesign/Material/bottomNavigation.dart';
import 'Material/gridlist.dart';
import 'package:uidesign/Material/listviewdemo.dart';
import 'Material/cardviewdemo.dart';
import 'Material/Searchbar.dart';
import 'package:uidesign/Material/SlidingList.dart';

void main() {
  runApp(MaterialApp(
    home: List(),

  ));
}

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  final cardShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  );
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
  final trailingicon = Icon(Icons.arrow_drop_down);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('List of Components',
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
                    title: Text('AppBar',
                        style: titlestyle,
                    ),
                    subtitle: Text(
                      "Basic AppBar, ActionWidgets, PopUpMenu, TabBar",
                      style: subtitlestyle,
                    ),
                    leading: Icon(Icons.apps, color: Colors.pink[900]),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => AppbarList()));
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
                    title: Text('Bottom app bar',
                      style: titlestyle,
                    ),
                    subtitle: Text(
                      'Displays navigation and actions at the bottom',
                      style: subtitlestyle,
                    ),
                    leading: Icon(Icons.credit_card, color: Colors.pink[900]),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => BottomAppBarListDemo()));
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
                    title: Text('Bottom Navigation',
                      style: titlestyle,
                    ),
                    subtitle: Text(
                      'Bottom navigation with color change on tap',
                      style: subtitlestyle,
                    ),
                    leading: Icon(Icons.video_label, color: Colors.pink[900]),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => BottomNavigation()));
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
                    title: Text('Bottom Sheet',
                      style: titlestyle,
                    ),
                    subtitle: Text(
                      'Persistent and modal bottom sheets',
                      style: subtitlestyle,
                    ),
                    leading: Icon(Icons.library_books, color: Colors.pink[900]),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => BottomSheetDemo()));
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
                    title: Text('Navigation Drawer',
                      style: titlestyle,
                    ),
                    subtitle: Text(
                      'Display simple navigation Drawer,userAccount drawer',
                      style: subtitlestyle,
                    ),
                    leading: Icon(Icons.menu, color: Colors.pink[900]),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => NavigationList()));
                    },
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                decoration: boxstyle,
                margin: cardmargin,
                child: Card(
                  shape: cardShape,
                  color: Colors.white70,
                  elevation: 0.2,
                  child: ListTile(
                    title: Text('Grid Lists',
                      style: titlestyle,
                    ),
                    subtitle: Text('Display Gridlist,Row and Column layout',
                      style: subtitlestyle,
                    ),
                    leading: Icon(Icons.grid_on, color: Colors.pink[900]),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Gridlist()));
                    },

                  ),),
              ),
            ),
            Center(
              child: Container(
                decoration: boxstyle,
                margin: cardmargin,
                child: Card(
                  shape: cardShape,
                  color: Colors.white70,
                  elevation: 0.2,
                  child: ListTile(
                    title: Text('Lists',
                      style: titlestyle,
                    ),
                    subtitle: Text('Display list of items',
                      style: subtitlestyle,
                    ),
                    leading: Icon(Icons.list, color: Colors.pink[900]),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Listviewdemo()));
                    },
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                decoration: boxstyle,
                margin: cardmargin,
                child: Card(
                  shape: cardShape,
                  color: Colors.white70,
                  elevation: 0.2,
                  child: ListTile(
                    title: Text('Cards',
                      style: titlestyle,),
                    subtitle: Text('Display list tiles using cards',
                      style: subtitlestyle,),
                    leading: Icon(
                        Icons.call_to_action, color: Colors.pink[900]),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Cardviewdemo()));
                    },
                  ),),
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
                    title: Text('Pickers',
                      style: titlestyle,
                    ),
                    subtitle: Text(
                      'Date and time selection',
                      style: subtitlestyle,
                    ),
                    leading: Icon(Icons.calendar_today, color: Colors.pink[900]),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => PickerAndroDemo()));
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
                    title: Text('Progress Indicators',
                      style: titlestyle,
                    ),
                    subtitle: Text(
                      'Linear, circular,intermediate',
                      style: subtitlestyle,
                    ),
                    leading: Icon(Icons.refresh, color: Colors.pink[900]),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => ProgressIndicatorDemo()));
                    },
                  ),
                ),
              ),
            ),
            /*Center(
              child: Container(
                margin: cardmargin,
                decoration: boxstyle,
                child: Card(
                  shape: cardShape,
                  color: Colors.white70,
                  elevation: 0.2,
                  child: ListTile(
                    title: Text('Selection Controls',
                      style: titlestyle,
                    ),
                    subtitle: Text(
                      'Checkboxes,radio buttons and switches',
                      style: subtitlestyle,
                    ),
                    leading: Icon(Icons.check_box, color: Colors.pink[900]),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SelectionControlsDemo()));
                    },
                  ),
                ),
              ),
            ),*/
            Center(
              child: Container(
                decoration: boxstyle,
                margin: cardmargin,
                child: Card(
                  shape: cardShape,
                  color: Colors.white70,
                  elevation: 0.2,
                  child: ListTile(
                    title: Text('Search Bar',
                      style: titlestyle,),
                    leading: Icon(Icons.search, color: Colors.pink[900]),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Searchbar()));
                    },
                    subtitle: Text(
                      'Display Search items ', style: subtitlestyle,),
                  ),),
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
                    title: Text('Snackbars ',
                      style: titlestyle,
                    ),
                    subtitle: Text(
                      'Snacks show messages at the bottom of the screen',
                      style: subtitlestyle,
                    ),
                    leading: Icon(Icons.undo, color: Colors.pink[900]),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SnackBarDemo()));
                    },
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                decoration: boxstyle,
                margin: cardmargin,
                child: Card(
                  shape: cardShape,
                  color: Colors.white70,
                  elevation: 0.2,
                  child: ListTile(
                    title: Text('DropDown Button',
                      style: titlestyle,),
                    subtitle: Text('DropDown Button showing list of items',
                      style: subtitlestyle,),
                    leading: Icon(Icons.arrow_drop_down_circle,
                        color: Colors.pink[900]),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Dropdowndemo()));
                    },
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                decoration: boxstyle,
                margin: cardmargin,
                child: Card(
                  shape: cardShape,
                  color: Colors.white70,
                  elevation: 0.2,
                  child: ListTile(
                    title: Text('Carousel',
                      style: titlestyle,),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Carouseldemo()));
                    },
                    subtitle: Text('Auto Carousel slider,Carousel pro',
                      style: subtitlestyle,),
                    leading: Icon(
                        Icons.chrome_reader_mode, color: Colors.pink[900]),
                  ),),
              ),
            ),
            Center(
              child: Container(
                decoration: boxstyle,
                margin: cardmargin,
                child: Card(
                  shape: cardShape,
                  color: Colors.white70,
                  elevation: 0.2,
                  child: ListTile(
                    title: Text('Sliding List',
                      style: titlestyle,
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SlidingList()));
                    },
                    subtitle: Text(
                      'single and double sliding', style: subtitlestyle,),
                    leading: Icon(Icons.sort, color: Colors.pink[900]),
                  ),),
              ),
            ),

            Center(
              child: Container(
                decoration: boxstyle,
                margin: cardmargin,
                child: Card(
                  shape: cardShape,
                  color: Colors.white70,
                  elevation: 0.2,
                  child: ListTile(
                    title: Text('ScrollView',
                      style: titlestyle,),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => ScrollChild()));
                    },
                    subtitle: Text('vertical and horizantal scrolling',
                      style: subtitlestyle,
                    ),
                    leading: Icon(Icons.style, color: Colors.pink[900]),
                  ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
