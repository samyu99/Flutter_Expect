import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
      home:HorizontalScroll()));
}
class HorizontalScroll extends StatefulWidget {
  @override
  _HorizontalScrollState createState() => _HorizontalScrollState();
}

class _HorizontalScrollState extends State<HorizontalScroll> {
  Widget row=new SafeArea(
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 200,
        child: Row(
          children: <Widget>[
            new GestureDetector(
              onTap: (){},
              child: Card(
                  elevation: 0.9,
                  child:new Column(
                    children: <Widget>[
                      Image.asset('assets/images/men.jpg',fit: BoxFit.cover,),
                      SizedBox(height: 5.0,),
                      Text("Men"),
                    ],)
              ),
            ),

            new GestureDetector(
              onTap: () {},
              child: Card(
                elevation: 0.7,
                child: new Column(
                  children: <Widget>[
                    Image.asset('assets/images/kids.jpg',fit: BoxFit.fitHeight,),
                    //SizedBox(height: 5.0,),
                    Text('Kids')
                  ],
                ),
                //color: Colors.teal[100],
              ),
            ),
            new GestureDetector(
              onTap: (){},
              child: Card(
                  elevation: 0.9,
                  child:new Column(
                    children: <Widget>[
                      Image.asset('assets/images/mens.jpg',fit: BoxFit.cover,),
                      SizedBox(height: 5.0,),
                      Text("Men"),
                    ],)
              ),
            ),

            new GestureDetector(
              onTap: () {},
              child: Card(
                elevation: 0.7,
                child: new Column(
                  children: <Widget>[
                    Image.asset('assets/images/kids.jpg',fit: BoxFit.fitHeight,),
                    //SizedBox(height: 5.0,),
                    Text('Kids')
                  ],
                ),
                //color: Colors.teal[100],
              ),
            ),
          ],
        ),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('HorizontalView Scrolling',
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This is horizontal Scroll view',style: TextStyle( fontWeight: FontWeight.w600,),),
            SizedBox(height: 20.0,),
            Center(
              child: new Container(
                child: row,
              ),
            ),
          ],
        ),
      ),
    );
  }
}