import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Samplegrid(),
  ));
}

class Samplegrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text(
            'Simple Grid View',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.pink[900],
          actions: <Widget>[],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: List.generate(30, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),
        ));
  }
}
