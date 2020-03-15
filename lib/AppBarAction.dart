
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
enum SingingCharacter { lafayette, jefferson }
class AppbarAction extends StatefulWidget {
  @override
  _AppbarActionState createState() => _AppbarActionState();
}

class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

class _AppbarActionState extends State<AppbarAction> {
  List<Item> _data = generateItems(8);
  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
              title: Text(item.expandedValue),
              subtitle: Text('To delete this panel, tap the trash can icon'),
              trailing: Icon(Icons.delete),
              onTap: () {
                setState(() {
                  _data.removeWhere((currentItem) => item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
  final titlestyle = TextStyle(
      fontSize: 19.0
  );
  final subtitlestyle = TextStyle(
    fontSize: 12.0,
    color: Colors.pink[900],
  );
  final trailingicon = Icon(Icons.arrow_drop_down);
  bool isSwitched = false;

  void _showcontent() {
    showDialog<Null>(
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          backgroundColor: Colors.grey,
          elevation: 90.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          title: Text('Flutter Gallery 2.3.0',
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ListTile(
                  title: Text('To see the source code for this app,'
                      'please visit the Flutter samples Github repo.',
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(' @ 2020 The Flutter Team',
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('CLOSE',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.pink[900],
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void dailogue() {
    showDialog<Null>(
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          backgroundColor: Colors.grey[500],
          elevation: 90.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          title: Text("Feedback",
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Max lines 20',
                    labelText: 'Write some feedback to send',
                    labelStyle: TextStyle(fontSize: 15,
                      color: Colors.black,),
                    hintStyle: TextStyle(fontSize: 15,
                      color: Colors.black,),
                    hintMaxLines: 13,
                  ),
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            FlatButton(
              child: Text('Send',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.pink[900],
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          theme: ThemeData(
              backgroundColor: Colors.pink[900]
          ),
          home: Scaffold(
            appBar: AppBar(
              title: Text('Settings'
                , style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
              backgroundColor: Colors.pink[900],
              elevation: 3.0,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.close),
                  iconSize: 30,
                  onPressed: () {
                    //jump to another pages
                    Navigator.pop(context);
                  },
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Card(
                      elevation: 3.0,
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      color: Colors.white70,
                      child: new ListTile(
                        title: Text('Text Scaling',
                          style: titlestyle,
                        ),
                        subtitle: Text('System',
                          style: subtitlestyle,
                        ),
                        trailing: trailingicon,
                        onTap: (){
                           _buildPanel();
                        },
                      ),
                    ),
                    Card(
                      elevation: 3.0,
                      margin: EdgeInsets.symmetric(
                          vertical: 3.0, horizontal: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      color: Colors.white70,
                      child: new ListTile(
                        title: Text('Text direction',
                            style: titlestyle
                        ),
                        subtitle: Text('Based on locale',
                          style: subtitlestyle,
                        ),
                        trailing: trailingicon,
                      ),
                    ),
                    Card(
                      elevation: 3.0,
                      margin: EdgeInsets.symmetric(
                          vertical: 3.0, horizontal: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      color: Colors.white70,
                      child: new ListTile(
                        title: Text('Locale',
                            style: titlestyle
                        ),
                        subtitle: Text('System - English(United...',
                          style: subtitlestyle,
                        ),
                        trailing: trailingicon,
                      ),
                    ),
                    Card(
                      elevation: 3.0,
                      margin: EdgeInsets.symmetric(
                          vertical: 3.0, horizontal: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      color: Colors.white70,
                      child: new ListTile(
                        title: Text('Platform mechanics',
                            style: titlestyle
                        ),
                        subtitle: Text('Android',
                          style: subtitlestyle,
                        ),
                        trailing: trailingicon,
                      ),
                    ),
                    Card(
                      elevation: 3.0,
                      margin: EdgeInsets.symmetric(
                          vertical: 3.0, horizontal: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      color: Colors.white70,
                      child: new ListTile(
                        title: Text('Theme',
                            style: titlestyle
                        ),
                        subtitle: Text('System',
                          style: subtitlestyle,
                        ),
                        trailing: trailingicon,
                      ),
                    ),
                    Card(
                      elevation: 3.0,
                      margin: EdgeInsets.symmetric(
                          vertical: 3.0, horizontal: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      color: Colors.white70,
                      child: new ListTile(
                        title: Text('Slow motion',
                            style: titlestyle
                        ),
                        trailing: Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                          activeTrackColor: Colors.pink[800],
                          activeColor: Colors.pink[900],
                        ),
                      ),
                    ),
                    Divider(
                      height: 35.0,
                      color: Colors.grey,
                    ),
                    ListTile(
                      leading: Icon(Icons.error_outline),
                      title: Text("About Flutter Gallery",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      onTap: () {
                        _showcontent();
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.announcement),
                      title: Text("Send Feedback",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      onTap: () {
                        dailogue();
                      },
                    ),
                    Divider(
                      height: 5.0,
                      color: Colors.grey,
                    ),
                    Text(
                      "Designed by RATNA PRIYA",
                      style:TextStyle(
                        fontSize: 13,
                        color: Colors.black45,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }
    }

