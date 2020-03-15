import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
void main(){
  runApp(MaterialApp(
    home:AppBarAction(),
  ));
}
class AppBarAction extends StatelessWidget {
  final titlestyle = TextStyle(fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:
        Scaffold(
          appBar:PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: AppBar(
              backgroundColor: Colors.pink[900],
                automaticallyImplyLeading: true,
                title: Text('Action Widgets',style: titlestyle,),
                leading:  IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                actions:<Widget> [
                  IconButton(
                    icon: Icon(Icons.search,
                        color: Colors.white),
                    onPressed: (){
                      Toast.show("Search bar", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.CENTER);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications,
                    ),
                    onPressed: (){
                      Toast.show("Notification", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.CENTER);
                    },
                  ),
                ]
            ),),
          body: new Container(

          ),
        ));

  }
}