import 'package:flutter/material.dart';
import 'package:uidesign/Cupertino/Picker.dart';
import 'package:uidesign/Cupertino/PullToRefresh.dart';
import 'package:uidesign/Cupertino/SegmentedControl.dart';
import 'package:uidesign/Cupertino/iOSNavigationBar.dart';
import 'package:uidesign/Cupertino/iOSSlider.dart';
import 'Cupertino/TextField.dart';
import 'Cupertino/iOSTabBar.dart';
import 'Cupertino/iOSSwitch.dart';
import 'Cupertino/ActivityIndicator.dart';
import 'Cupertino/iOSAlert.dart';
import 'Cupertino/iOSButton.dart';

void main() {
  runApp(MaterialApp(
    home: ListCupertino(),

  ));
}


class ListCupertino extends StatefulWidget {
  @override
  _ListCupertinoState createState() => _ListCupertinoState();
}

class _ListCupertinoState extends State<ListCupertino> {
  final cardmargin=EdgeInsets.symmetric(vertical: 7.0);
  final boxstyle=BoxDecoration(
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
  final cardShape=RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('List of Cupertino',
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
        body:  Container(
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
                      title: Text('Activity indicator',
                        style: titlestyle,
                      ),
                      subtitle: Text(
                        "iOS-style activity indicators",
                        style: subtitlestyle,
                      ),
                      leading: Icon(Icons.grain, color: Colors.pink[900]),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => ActivityIndicatorDemo()));
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
                      title: Text('Alerts',
                        style: titlestyle,
                      ),
                      subtitle: Text(
                        'iOS-style alerts dialogs',
                        style: subtitlestyle,
                      ),
                      leading: Icon(Icons.center_focus_strong, color: Colors.pink[900]),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => iOSAlertDemo()));
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
                      title: Text('Buttons',
                        style: titlestyle,
                      ),
                      subtitle: Text(
                        'iOS-style buttons',
                        style: subtitlestyle,
                      ),
                      leading: Icon(Icons.edit_attributes, color: Colors.pink[900]),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => iOSButtonDemo()));
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
                      title: Text('Navigation bar',
                        style: titlestyle,
                      ),
                      subtitle: Text('iOS-style navigation bar',
                        style: subtitlestyle,
                      ),
                      leading: Icon(Icons.credit_card, color: Colors.pink[900]),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => iOSNavigationBarDemo()));
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
                      title: Text('Picker',
                        style: titlestyle,
                      ),
                      subtitle: Text('iOS-style date and time pickers',
                        style: subtitlestyle,
                      ),
                      leading: Icon(Icons.calendar_today, color: Colors.pink[900]),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => ExamplePage()));
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
                      title: Text('Pull to refresh',
                        style: titlestyle,),
                      subtitle: Text('iOS-style pull to refresh',
                        style: subtitlestyle,),
                      leading: Icon(
                          Icons.refresh, color: Colors.pink[900]),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => PullToRefreshDemo()));
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
                      title: Text('Segmented Control',
                        style: titlestyle,),
                      leading: Icon(Icons.developer_board, color: Colors.pink[900]),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => CupertinoSegmentedControlDemo()));
                      },
                      subtitle: Text(
                        'iOS-style segmented control ', style: subtitlestyle,),
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
                      title: Text('Slider',
                        style: titlestyle,),
                      subtitle: Text('iOS-style slider',
                        style: subtitlestyle,),
                      leading: Icon(Icons.swap_horiz,
                          color: Colors.pink[900]),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => SliderExample()));
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
                      title: Text('Switch',
                        style: titlestyle,),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => iOSSwitchDemo()));
                      },
                      subtitle: Text('iOS-style switch',
                        style: subtitlestyle,),
                      leading: Icon(
                          Icons.switch_camera, color: Colors.pink[900]),
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
                      title: Text('Tab Bar',
                        style: titlestyle,
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => iOSTabbar()));
                      },
                      subtitle: Text(
                        'iOS-style bottom tab bar', style: subtitlestyle,),
                      leading: Icon(Icons.tab, color: Colors.pink[900]),
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
                      title: Text('Text fields',
                        style: titlestyle,),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => TextFieldDemo()));
                      },
                      subtitle: Text('iOS-style text fields',
                        style: subtitlestyle,
                      ),
                      leading: Icon(Icons.sort_by_alpha, color: Colors.pink[900]),
                    ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
