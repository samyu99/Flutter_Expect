import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:Listviewdemo(),
  ));
}
class Listviewdemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: true,
        title: Text('ListView Demo',
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
        children: List.generate(30, (index){
          return ListTile(
            leading: CircleAvatar(
              child: Text('$index'),
            ),
            title: Text('Item $index'),
            //style: Theme.of(context).textTheme.headline,
          );

        }),
      )
    );
  }
}
