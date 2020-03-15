import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: iOSTabbar(),
  ));
}

class PlaceholderWidget extends StatelessWidget {
  final Icon icon;

  PlaceholderWidget(this.icon);

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: icon,
      ),
    );
  }
}

class iOSTabbar extends StatefulWidget {
  @override
  _iOSTabbarState createState() => _iOSTabbarState();
}

class _iOSTabbarState extends State<iOSTabbar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Icon(Icons.home)),
    PlaceholderWidget(Icon(Icons.chat_bubble_outline)),
    PlaceholderWidget(Icon(Icons.person_pin)),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  final titlestyle = TextStyle(fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink[900],
            title: Text('TabBar Demo',
              style: titlestyle,
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: _children[_currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              onTap: onTabTapped,
              currentIndex:  _currentIndex, // this will be set when a new tab is tapped
              items: [
                BottomNavigationBarItem(
                  icon: new Icon(Icons.home),
                  title: new Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.mail),
                  title: new Text('Messages'),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    title: Text('Profile')
                ),
              ],
            ),
          ),
    );
  }
}