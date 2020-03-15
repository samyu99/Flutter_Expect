import 'package:flutter/material.dart';
import 'package:uidesign/Material/gridview.dart';
import 'package:uidesign/SampleApps/ShopGridView.dart';

class NestedBottomBarTabBarDemo extends StatefulWidget {
  @override
  _NestedBottomBarTabBarDemoState createState() => _NestedBottomBarTabBarDemoState();
}

class _NestedBottomBarTabBarDemoState extends State<NestedBottomBarTabBarDemo> {
  final textstyle= TextStyle(
    fontSize: 15,
    fontStyle: FontStyle.normal,
  );
  final draweritemsicon= Icon(Icons.arrow_forward_ios,color:Colors.black26);
  Widget appBarTitle = new Text("Paytm Demo");

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            elevation: 0.3,
            bottom: TabBar(
              indicatorPadding: EdgeInsets.all(40.0),
              indicatorColor: Colors.black,
              isScrollable: true,
              labelPadding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 55.0),
              tabs: [
                Text(
                  'TRIALS',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  'SHOP',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            toolbarOpacity: 0.9,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Container(
            child: FloatingActionButton(
              elevation: 0.2,
              child: const Icon(Icons.add),
              onPressed: () {},
            ),
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white24,
              ),
            ),
            margin: EdgeInsets.only(bottom: 7.0),
            child: BottomAppBar(
              shape: CircularNotchedRectangle(),
              notchMargin: 5.0,
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //menu
                  IconButton(
                    tooltip:
                    MaterialLocalizations.of(context).openAppDrawerTooltip,
                    icon: Icon(Icons.grid_on),
                    onPressed: () {
                      showModalBottomSheet<Null>(
                        context: context,
                        builder: (BuildContext context) => openBottomDrawer(),
                      );
                    },
                  ),
                  IconButton(
                    //tooltip: GalleryLocalizations.of(context).starterAppTooltipSearch,
                    icon: const Icon(Icons.local_offer),
                    onPressed: () {},
                  ),
                  IconButton(
                    // tooltip: GalleryLocalizations.of(context).starterAppTooltipFavorite,
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text('Ratna Priya',
                    style: textstyle,
                  ),
                  accountEmail: Text("ratnapriya.4g@gmail.com",
                    style: TextStyle(
                      fontSize: 10,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.blue:Colors.white,
                    child: Image.asset('assets/images/deepi.jpg'),
                    radius:100,
                  ),
                ),
                ListTile(
                  title: Text("My Order",
                    style: textstyle,
                  ),
                  subtitle: Text("Shopping,Bills & Tickets",
                    style: TextStyle(
                      fontSize: 10,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  leading: Icon(Icons.shopping_basket,color:Colors.black26),
                  trailing:draweritemsicon,
                ),
                ListTile(
                  title: Text("My Passbook",
                    style: textstyle,
                  ),
                  subtitle: Text("Wallets,Paytm Payment Bank Balance",
                    style: TextStyle(
                      fontSize: 10,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  leading: Icon(Icons.library_books,color:Colors.black26),
                  trailing:draweritemsicon,
                ),
                ListTile(
                  title: Text("Payment Remainders",
                    style: textstyle,
                  ),
                  subtitle: Text("Remainders for your frequent payments",
                    style: TextStyle(
                      fontSize: 10,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  leading: Icon(Icons.calendar_today,color:Colors.black26),
                  trailing:draweritemsicon,
                ), ListTile(
                  title: Text("Choose Language",
                    style: textstyle,
                  ),
                  subtitle: Text("Your preferred language to use Paytm in",
                    style: TextStyle(
                      fontSize: 10,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  leading: Icon(Icons.sync_problem,color:Colors.black26),
                  trailing:draweritemsicon,
                ), ListTile(
                  title: Text("24x7 Help",
                    style: textstyle,
                  ),
                  subtitle: Text("Raise a query,View progress",
                    style: TextStyle(
                      fontSize: 10,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  leading: Icon(Icons.help_outline,color:Colors.black26),
                  trailing:draweritemsicon,
                ), ListTile(
                  title: Text("My Profile Settings",
                    style: textstyle,
                  ),
                  subtitle: Text("Change Profile Photo,Update Personal Info",
                    style: TextStyle(
                      fontSize: 10,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  leading: Icon(Icons.account_circle,color:Colors.black26),
                  trailing:draweritemsicon,
                ),
                ListTile(
                  title: Text("Close",
                    style: textstyle,
                  ),
                  subtitle: Text("Exit from Drawer",
                    style: TextStyle(
                      fontSize: 10,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  leading: Icon(Icons.close,
                    color:Colors.black26,
                  ),
                  trailing:draweritemsicon,
                  onTap:(){ Navigator.pop(context);},
                ),
              ],
            ),
          ),


          body: TabBarView(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    new Container(
                      constraints: new BoxConstraints.expand(
                        height: 240.0,
                      ),
                      padding: new EdgeInsets.only(
                          left: 16.0, bottom: 8.0, right: 16.0),
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image:
                          new AssetImage('assets/images/cosmetics.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: new Stack(
                        children: <Widget>[
                          new Positioned(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 24,
                                child: IconButton(
                                  icon: Icon(Icons.compare,color: Colors.white,size: 30,),
                                ),
                              ),
                            ),
                          ),
                          new Positioned(
                            left: 0.0,
                            bottom: 0.0,
                            child: new Icon(Icons.star,color: Colors.white,size: 27),
                          ),
                          new Positioned(
                            left: 30.0,
                            bottom: 0.0,
                            child: new Icon(Icons.star,color: Colors.white,size: 27),
                          ), new Positioned(
                            left: 60.0,
                            bottom: 0.0,
                            child: new Icon(Icons.star,color: Colors.white,size: 27),
                          ), new Positioned(
                            left: 90.0,
                            bottom: 0.0,
                            child: new Icon(Icons.star,color: Colors.white,size: 27),
                          ),
                          new Positioned(
                            left: 120.0,
                            bottom: 0.0,
                            child: new Icon(Icons.star,color: Colors.white,size: 27),
                          ),
                        ],
                      ),
                    ),
                    DefaultTabController(
                      length: 5,
                      child: Container(
                        child: TabBar(
                          indicatorColor: Colors.black,
                          isScrollable: true,
                          tabs:[
                            Text(
                              'SAMPLE',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'DETAILS',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'REVIEWS',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            IconButton(
                              icon:Icon(Icons.share,color: Colors.black,),
                              onPressed: (){},
                            ),
                            IconButton(
                              icon:Icon(Icons.favorite_border,color: Colors.black),
                              onPressed: (){},
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text("Moisturizer-Caramel & Cedarwood(30gm)          "
                        "RAW NATURE COMPANY                                  "
                        "WORTH: Rs.140 |  AVAIL FOR 1 TRIAL POINT",
                      style:TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              ShopGridViewDemo(),
            ],
          ),
        ),
    );
  }
  //This drawer is opened in modal bottom sheet
  Widget openBottomDrawer() {
    return Drawer(
      child: Column(
        children: const <Widget>[
          //Add menu item to edit
          const ListTile(
            leading: const Icon(Icons.mode_edit),
            title: const Text('Edit'),
          ),
          const ListTile(
            //Add menu item to add a new item
            leading: const Icon(Icons.add),
            title: const Text('Add'),
          ),
        ],
      ),
    );
  }
}