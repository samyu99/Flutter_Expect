import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
void main(){
  runApp(MaterialApp(
 home: SlidingList(),
  ));
}
class SlidingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: true,
        title: Text('Sliding Demo',
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
        body: new Container(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 50.0,),
              Center(child: Text('Single Slider',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600
              ),)),
              SizedBox(height: 10.0,),
              Slidable(
                child: new Card(
                  //margin: EdgeInsets.all(10.0),
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  color: Colors.white70,
                  child: ListTile(
                    title: Text('Jhon',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),),
                    subtitle: Text('Developer',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: ClipOval(
                      child: Material(
                        //color: Colors.pink[900], // button color
                        child: InkWell(
                          splashColor: Colors.red, // inkwell color
                          child: SizedBox(width: 56, height: 56, child: Image.asset('assets/images/cardpro.jpg')),
                          onTap: () {},
                        ),
                      ),
                    ),
                  ),
                ),
                actionPane: SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                showAllActionsThreshold: 0.1,
                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: 'Message',
                    color: Colors.transparent,
                    icon: Icons.message,
                    foregroundColor: Colors.pink[900],
                  ),
                  IconSlideAction(
                    caption: 'more',
                    color: Colors.transparent,
                    icon: Icons.more,
                    foregroundColor: Colors.pink[900],
                  ),
                ],
              ),
              SizedBox(height: 30.0,),
              Center(child: Text('Double Slider',
              style: TextStyle(
                fontSize: 15.0,
                  fontWeight: FontWeight.w600
              ),)),
              SizedBox(height: 20.0,),
              Slidable(
                child: new Card(
                  //margin: EdgeInsets.all(10.0),
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  color: Colors.white70,
                  child: ListTile(
                    title: Text('Keerthi',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),),
                    subtitle: Text('Engineer',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: ClipOval(
                      child: Material(
                        //color: Colors.pink[900], // button color
                        child: InkWell(
                          splashColor: Colors.red, // inkwell color
                          child: SizedBox(width: 56, height: 56, child: Image.asset('assets/images/cardpro1.jpg')),
                          onTap: () {},
                        ),
                      ),
                    ),
                  ),
                ),
                actionPane: SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                showAllActionsThreshold: 0.1,
                actions: <Widget>[
                  IconSlideAction(
                    caption: 'Archive',
                    color: Colors.transparent,
                    icon: Icons.archive,
                foregroundColor: Colors.pink[900],
                  ),
                  IconSlideAction(
                    caption: 'Share',
                    color: Colors.transparent,
                    icon: Icons.share,
                foregroundColor: Colors.pink[900],
                  ),
                ],
                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: 'Message',
                    color: Colors.transparent,
                    icon: Icons.message,
                    foregroundColor: Colors.pink[900],
                  ),
                  IconSlideAction(
                    caption: 'more',
                    color: Colors.transparent,
                    icon: Icons.more,
                    foregroundColor: Colors.pink[900],
                  ),
                ],
              ),
            ],
          ),
        ),
    ),
    );
  }
}
