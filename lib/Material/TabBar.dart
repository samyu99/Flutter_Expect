import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:Tabbar(),
  ));
}
class Tabbar extends StatelessWidget {
  final titlestyle = TextStyle(fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 7,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(110.0),
            child:  AppBar(
              backgroundColor: Colors.pink[900],
              title: Text('TabBar Demo',
                style: titlestyle,
              ),
              leading:  IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              bottom: TabBar(
                isScrollable: true,
//              indicatorPadding: EdgeInsets.all(10.0),
//              labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
                tabs: [
                  IconButton(icon: Icon(Icons.camera_alt,color: Colors.white),),
                  Text('Category'),
                  Text('Status'),
                  Text('Contacts'),
                  Text('Shopping'),
                  Text('Cart'),
                  Text('Accesories')

                ],
              ),
              toolbarOpacity: 0.9,
              // titleSpacing: NavigationToolbar.kMiddleSpacing,
            ),

          ),
          body:  Center(
            child: TabBarView(
              children: [
                Icon(Icons.camera_alt,size: 50.0,color: Colors.black,),
                Center(child: Text('select ur category',style: TextStyle(fontSize: 15.0),)),
                Center(child: Text('Check ur status',style: TextStyle(fontSize: 15.0))),
                Center(child: Text('Attend calls',style: TextStyle(fontSize: 15.0))),
                Icon(Icons.shopping_basket,size: 50.0,color: Colors.black,),
                Icon(Icons.shopping_cart,size: 50.0,color: Colors.black,),
                Icon(Icons.tag_faces,size: 50.0,color: Colors.black,),
              ],
            ),
          ),
        ));
  }
}