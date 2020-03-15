import 'package:flutter/material.dart';
import 'package:uidesign/color/Deep_Purple.dart';
import 'package:uidesign/color/Light_Blue.dart';
import 'package:uidesign/color/Teal.dart';
import '../color/Blue.dart';
import '../color/Cyan.dart';
import '../color/Indigo.dart';
import '../color/Pink.dart';
import '../color/Purple.dart';
import '../color/Red.dart';
import '../color/Green.dart';
import '../color/Light_Green.dart';
import '../color/Lime.dart';
import '../color/Yellow.dart';
import '../color/Amber.dart';
import '../color/Orange.dart';
import '../color/Deep_Orange.dart';
import '../color/Brown.dart';
import '../color/Grey.dart';
import '../color/Blue_Grey.dart';

class Coloritem extends StatefulWidget {
  @override
  _ColoritemState createState() => _ColoritemState();
}

class _ColoritemState extends State<Coloritem> {
  final tabstyle=TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 19,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text('Colors',
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
            bottom:TabBar(
              indicatorPadding: EdgeInsets.all(10.0),
              indicatorSize:TabBarIndicatorSize.tab,
              isScrollable: true,
              labelPadding: EdgeInsets.symmetric(vertical:10.0,horizontal: 10.0),
              tabs: [
                Text('RED',style:tabstyle,),
                Text('PINK',style:tabstyle,),
                Text("PURPLE",style:tabstyle,),
                Text('DEEP PURPLE',style:tabstyle,),
                Text('INDIGO',style:tabstyle,),
                Text('BLUE',style:tabstyle,),
                Text('LIGHT BLUE',style:tabstyle,),
                Text("CYAN",style:tabstyle,),
                Text('TEAL',style:tabstyle,),
                Text('GREEN',style:tabstyle,),
                Text('LIGHT GREEN',style:tabstyle,),
                Text('LIME',style:tabstyle,),
                Text("YELLOW",style:tabstyle,),
                Text('AMBER',style:tabstyle,),
                Text('ORANGE',style:tabstyle,),
                Text('DEEP ORANGE',style:tabstyle,),
                Text('BROWN',style:tabstyle,),
                Text("GREY",style:tabstyle,),
                Text('BLUE GREY',style:tabstyle,),
              ],
            ),
            toolbarOpacity: 0.9,
          ),
          body:TabBarView(
            children: <Widget>[
              RedColor(),
              PinkColor(),
              PurpleColor(),
              Deep_PurpleColor(),
              IndigoColor(),
              BlueColor(),
              Light_BlueColor(),
              CyanColor(),
              TealColor(),
              GreenColor(),
              Light_GreenColor(),
              LimeColor(),
              YellowColor(),
              AmberColor(),
              OrangeColor(),
              Deep_OrangeColor(),
              BrownColor(),
              GreyColor(),
              Blue_GreyColor(),

            ],
          ),
        ),
      ),
    );
  }
}
