import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:BottomNavigation(),
    theme: ThemeData(
        primarySwatch: Colors.blueGrey
    ),
  ));
}
class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.blue),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  final titlestyle = TextStyle(fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.pink[900],
        title: Text('BottomBar Navigation',
        style: titlestyle,
           ),
            leading:  IconButton(
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
    );
  }
}
