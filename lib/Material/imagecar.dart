import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
void main(){
  runApp(MaterialApp(
    home:CarouselWithIndicator()
  ));
}
class CarouselWithIndicator extends StatefulWidget {
  @override
  _CarouselWithIndicatorState createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;
List imgList=['assets/images/card1.jpg',
  'assets/images/card2.jpg',
  'assets/images/card3.jpg',
  'assets/images/card4.jpg',
  'assets/images/card5.jpg',
  'assets/images/card6.jpg'];
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          CarouselSlider(
          items: imgList.map((img) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Image.asset(
              img,
              fit: BoxFit.fill,
            ),
          );
        },
      );
    }).toList(),
            autoPlay: true,
            aspectRatio: 2.0,
            onPageChanged: (index) {
              setState(() {
                _current = index;
              });
            },
          ),
        ]
    );
  }
}
