import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    home: Carouseldemo(),
  ));
}

class Carouseldemo extends StatefulWidget {
  @override
  _CarouseldemoState createState() => _CarouseldemoState();
}

class _CarouseldemoState extends State<Carouseldemo> {
  Widget image_Carousel = Container(
    height: 200,
    child: Carousel(
      images: [
        AssetImage("assets/images/cardpro.jpg"),
        AssetImage("assets/images/car2.jpg"),
        AssetImage("assets/images/car3.jpg"),
        AssetImage("assets/images/car4.jpg"),
        AssetImage("assets/images/car5.jpg"),
        AssetImage("assets/images/car6.jpg"),
        AssetImage("assets/images/cardpro1.jpg"),
      ],
      indicatorBgPadding: 10.0,
      dotBgColor: Colors.transparent,
      //dotSize: 0.9,
      dotColor: Colors.white,
      dotIncreasedColor: Colors.blue,
    ),
  );
  int _current = 0;
  List imgList = [
    'assets/images/card1.jpg',
    'assets/images/card2.jpg',
    'assets/images/card3.jpg',
    'assets/images/card4.jpg',
    'assets/images/card5.jpg',
    'assets/images/card6.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'Carousel Demo',
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
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Carousel Pro',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
              ),
              SizedBox(height: 15.0),
              image_Carousel,
              SizedBox(height: 20.0),
              Text(
                'Carousel Slider',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
              ),
              SizedBox(height: 15.0),
              CarouselSlider(
                autoPlay: true,
                pauseAutoPlayOnTouch: Duration(seconds: 10),
                items: imgList.map((imgUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                        child: Image.asset(
                          imgUrl,
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  );
                }).toList(),
                //autoPlay: true,
                aspectRatio: 2.0,
                onPageChanged: (index) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
