import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:UserAccount(),
  ));
}
class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar:  AppBar(
            automaticallyImplyLeading: true,
            title: Text('User Account Drawer',
              style: TextStyle(
                  color: Colors.white
              ),),
            backgroundColor: Colors.pink[900],
          ),
          drawer: Drawer(
            child:ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  onDetailsPressed: (){
                  },
                  accountName: Text("Jhon"),
                  accountEmail: Text("Jhons3@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.pink[900]
                        : Colors.white,
                    child: Text(
                      "S",
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
