import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uidesign/SampleAppList.dart';
import 'package:uidesign/SampleApps/NestedBottomBarTabBar.dart';
import 'package:uidesign/SampleApps/home_page.dart';
import 'package:uidesign/SampleApps/loginpage.dart';
import 'package:uidesign/SampleApps/websocket.dart';
import 'package:uidesign/fetch_data/main_fetch_data.dart';
import 'AppBarAction.dart';
import 'ListCupertino.dart';
import 'ListStyles.dart';
import 'List.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
// When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => HomePage(),
// When navigating to the "/second" route, build the SecondScreen widget.
      '/list': (context) => List(),
      '/listcupertino': (context) => ListCupertino(),
      '/liststyles': (context) => ListStyle(),
    },
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final titlestyle = TextStyle(fontSize: 23.0);
  final subtitlestyle = TextStyle(
    fontSize: 12.0,
    color: Colors.pink[900],
  );
  final trailingicon = Icon(Icons.arrow_drop_down);

  Widget topSlider = Builder(
    builder: (BuildContext context) {
      return Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(17.0),
            height: 200,
            child: Carousel(
              borderRadius: true,
              images: [
                AssetImage("assets/images/flutter4.jpg"),
                AssetImage("assets/images/loginpage.jpg"),
                AssetImage("assets/images/websocket.jpg"),
                AssetImage("assets/images/chatapp.jpg"),
                AssetImage("assets/images/nestedtabar.jpg"),
                AssetImage("assets/images/flutter1.jpg"),

              ],
              indicatorBgPadding: 15.0,
              dotBgColor: Colors.transparent,
              dotColor: Colors.white,
              dotIncreasedColor: Colors.pink[900],
              autoplay: true,
              onImageTap: (index) {
                switch(index) {
                  case 1:
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => login()));
                    break;
                  case 2:
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => websocket()));
                    break;
                  case 3:
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => HomePage()));
                    break;
                  case 4:
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => NestedBottomBarTabBarDemo()));
                    break;
                  default:
                }
              },
            ),
          ),
        ],
      );
    },
  );


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery
        .of(context)
        .size
        .width;
    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.pink[900]),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Gallery',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.pink[900],
          elevation: 5.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                //jump to another pages
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppbarAction()),
                );
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                topSlider,
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 14.0),
                  child: Text("Categories",
                    style: TextStyle(fontSize: 25.0,
                        color: Colors.pink[900], fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    elevation: 3.0,
                    margin:
                    EdgeInsets.symmetric(vertical: 7.0, horizontal: 14.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    color: Colors.white70,
                    child: new ListTile(
                      title: Text(
                        'MATERIAL',
                        style: titlestyle,
                      ),
                      leading: Icon(
                        Icons.book,
                        color: Colors.pink[900],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => List()),
                        );
                      },
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    elevation: 3.0,
                    margin:
                    EdgeInsets.symmetric(vertical: 7.0, horizontal: 14.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    color: Colors.white70,
                    child: new ListTile(
                      title: Text(
                        'CUPERTINO',
                        style: titlestyle,
                      ),
                      leading: Icon(
                        Icons.camera,
                        color: Colors.pink[900],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListCupertino()),
                        );
                      },
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    elevation: 3.0,
                    margin:
                    EdgeInsets.symmetric(vertical: 7.0, horizontal: 14.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    color: Colors.white70,
                    child: new ListTile(
                      title: Text(
                        'Fetch JSON Data ',
                        style: titlestyle,
                      ),
                      leading: Icon(
                        Icons.system_update_alt,
                        color: Colors.pink[900],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>   MainFetchData(),),
                        );
                      },
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    elevation: 3.0,
                    margin:
                    EdgeInsets.symmetric(vertical: 7.0, horizontal: 14.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    color: Colors.white70,
                    child: new ListTile(
                      title: Text(
                        'STYLES & OTHER',
                        style: titlestyle,
                      ),
                      leading: Icon(
                        Icons.local_library,
                        color: Colors.pink[900],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListStyle()),
                        );
                      },
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    elevation: 3.0,
                    margin:
                    EdgeInsets.symmetric(vertical: 7.0, horizontal: 14.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    color: Colors.white70,
                    child: new ListTile(
                      title: Text(
                        'APPS CLONE',
                        style: titlestyle,
                      ),
                      leading: Icon(
                        Icons.storage,
                        color: Colors.pink[900],
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => SampleAppList()));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class MyMenuButton extends StatelessWidget {
  final String title;
  final VoidCallback actionTap;

  MyMenuButton({this.title, this.actionTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: MaterialButton(
        height: 50.0,
        color: Colors.pink[900],
        textColor: Colors.white,
        child: new Text(title),
        onPressed: actionTap,
      ),
    );
  }
}