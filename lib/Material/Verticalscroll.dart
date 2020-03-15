import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
      home:VerticalScroll()));
}
class VerticalScroll extends StatefulWidget {
  @override
  _VerticalScrollState createState() => _VerticalScrollState();
}

class _VerticalScrollState extends State<VerticalScroll> {
  Widget column=new SafeArea(
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        //height: 200,
        width: 500,
        child: Column(
          children: <Widget>[
            Card(
                elevation: 0.9,
                child:
                    Image.asset('assets/images/cardpro1.jpg',fit: BoxFit.cover,),
            ),
            Card(
              elevation: 0.9,
              child:
              Image.asset('assets/images/car1.jpg',fit: BoxFit.cover,),
            ),
            Card(
              elevation: 0.9,
              child:
              Image.asset('assets/images/car2.jpg',fit: BoxFit.cover,),
            ),
            Card(
              elevation: 0.9,
              child:
              Image.asset('assets/images/car3.jpg',fit: BoxFit.cover,),
            ),
            Card(
              elevation: 0.9,
              child:
              Image.asset('assets/images/car4.jpg',fit: BoxFit.cover,),
            ),
            Card(
              elevation: 0.9,
              child:
              Image.asset('assets/images/car5.jpg',fit: BoxFit.cover,),
            ),
            Card(
              elevation: 0.9,
              child:
              Image.asset('assets/images/car6.jpg',fit: BoxFit.cover,),
            ),
            Card(
              elevation: 0.9,
              child:
              Image.asset('assets/images/cardpro.jpg',fit: BoxFit.cover,),
            ),

          ],
        ),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: true,
        title: Text('Vertical Scrolling Demo',
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
        child: new ListView(
          children: <Widget>[
            SizedBox(height: 20.0,),
            Center(child: Text('This is vertical view',style: TextStyle( fontWeight: FontWeight.w600,),)),
            SizedBox(height: 20.0,),
            column,
          ],
        ),
      )
    );
  }
}
