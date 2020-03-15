import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class ShopGridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                print('tapped');
                Toast.show("Fashion", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);

              },
              child: Card(
                elevation: 0.7,
                child: new Column(
                  children: <Widget>[
                    Expanded(child: Image.asset('assets/images/fashion.jpg'),),
                    SizedBox(height: 15.0,),
                    Text('Fashion')
                  ],
                ),
                //color: Colors.teal[100],
              ),
            ),
            new GestureDetector(
              onTap: () {
                Toast.show("Beauty", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
              },
              child: Card(
                elevation: 0.7,
                child: new Column(
                  children: <Widget>[
                    Expanded(child: Image.asset('assets/images/cosmetics.jpg')),
                    SizedBox(height: 15.0,),
                    Text('Beauty')
                  ],
                ),
                //color: Colors.teal[100],
              ),
            ),
            new GestureDetector(
              onTap: () {
                Toast.show("Mobiles", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
              },
              child: Card(
                elevation: 0.7,
                child: new Column(
                  children: <Widget>[
                    Expanded( child: Image.asset('assets/images/mobiles.jpg'),),
                    SizedBox(height: 20.0),
                    Text('Mobiles')
                  ],
                ),
                //color: Colors.teal[100],
              ),
            ),
            new GestureDetector(
              onTap: () {
                Toast.show("Electronics", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
              },
              child: Card(
                elevation: 0.7,
                child: new Column(
                  children: <Widget>[
                    Expanded(child: Image.asset('assets/images/electronics.jpg')),
                    SizedBox(height: 20.0),
                    Text('Electronics')
                  ],
                ),
                //color: Colors.teal[100],
              ),
            ),
            new GestureDetector(
              onTap: () {
                Toast.show("Furniture", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
              },
              child: Card(
                elevation: 0.7,
                child: new Column(
                  children: <Widget>[
                    Expanded(child: Image.asset('assets/images/furniture.jpg'),),
                    SizedBox(height: 20.0),
                    Text('Furniture')
                  ],
                ),
                //color: Colors.teal[100],
              ),
            ),
            new GestureDetector(
              onTap: () {
                Toast.show("Home", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
              },
              child: Card(
                elevation: 0.7,
                child: new Column(
                  children: <Widget>[
                    Expanded(child: Image.asset('assets/images/home.jpg')),
                    SizedBox(height: 5.0),
                    Text('Home')
                  ],
                ),
                //color: Colors.teal[100],
              ),
            ),
            new GestureDetector(
              onTap: () {
                Toast.show("Travel", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
              },
              child: Card(
                elevation: 0.7,
                child: new Column(
                  children: <Widget>[
                    Expanded(child: Image.asset('assets/images/travel.jpg'),),
                    SizedBox(height: 15.0),
                    Text('Travel')
                  ],
                ),
                //color: Colors.teal[100],
              ),
            ),
            new GestureDetector(
              onTap: () {
                Toast.show("Grocery", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
              },
              child: Card(
                elevation: 0.7,
                child: new Column(
                  children: <Widget>[
                    Expanded(child: Image.asset('assets/images/grocery.jpg')),
                    SizedBox(height: 15.0),
                    Text('Grocery')
                  ],
                ),
                //color: Colors.teal[100],
              ),
            ),
            new GestureDetector(
              onTap: () {
                Toast.show("Toys", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
              },
              child: Card(
                elevation: 0.7,
                child: new Column(
                  children: <Widget>[
                    Expanded( child: Image.asset('assets/images/toys.jpg'),),
                    SizedBox(height: 5.0),
                    Text('Toys')
                  ],
                ),
                //color: Colors.teal[100],
              ),
            ),
            new GestureDetector(
              onTap: () {
                Toast.show("Sports", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
              },
              child: Card(
                elevation: 0.7,
                child: new Column(
                  children: <Widget>[
                    Expanded(child: Image.asset('assets/images/sports.jpg')),
                    SizedBox(height: 15.0,),
                    Text('Sports')
                  ],
                ),
                //color: Colors.teal[100],
              ),
            ),
            new GestureDetector(
              onTap: () {
                Toast.show("Recharge", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
              },
              child: Card(
                elevation: 0.7,
                child: new Column(
                  children: <Widget>[
                    Expanded(
                      child: Image.asset(
                        'assets/images/recharges.jpg', fit: BoxFit.cover,),),
                    SizedBox(height: 50.0),
                    Text('Recharge')
                  ],
                ),
                //color: Colors.teal[100],
              ),
            ),
            new GestureDetector(
              onTap: () {
                Toast.show("Insurance", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
              },
              child: Card(
                elevation: 0.7,
                child: new Column(
                  children: <Widget>[
                    Expanded(child: Image.asset('assets/images/insurance.jpg')),
                    SizedBox(height: 15.0,),
                    Text('Insurance')
                  ],
                ),
                //color: Colors.teal[100],
              ),
            ),
          ],)
    );
  }
}
