import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:Navigation(),
  ));
}
class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final cardmargin = EdgeInsets.symmetric(vertical: 7.0,horizontal: 12.0);
  final boxstyle = BoxDecoration(
    border: Border.all(
        color: Colors.pink[900]
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(20.0),
      //         <--- border radius here
    ),
  );
  final titlestyle = TextStyle(fontSize: 20.0);
  final subtitlestyle = TextStyle(
    fontSize: 12.0,
    color: Colors.pink[900],
  );
  final trailingicon = Icon(Icons.arrow_drop_down);
  final cardShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text('Simple Navigation Drawer',
              style: TextStyle(
                  color: Colors.white
              ),),
            backgroundColor: Colors.pink[900],
          ),
          drawer: Drawer(
              child: ListView(
                  children: <Widget>[
                    Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/four.jpg'),
                        ),
                        title: Text("Safety First"),
                        subtitle: Text('Say hello...'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: (){_opennewpage("Have a good day..!");},
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    ListTile(
                      leading: Icon(Icons.payment,size: 30.0,),
                      title: Text("Accept Payments"),
                      subtitle: Text('Show/Share payment link'),
                      trailing: Icon(Icons.arrow_forward_ios,size: 20.0),
                      onTap: (){_opennewpage("Accept Payments");},
                    ),
                    ListTile(
                      leading: Icon(Icons.shopping_cart,size: 30.0,),
                      title: Text("My Orders"),
                      subtitle: Text('Shopping,Movies,Bills'),
                      trailing: Icon(Icons.arrow_forward_ios,size: 20.0,),
                      onTap: (){_opennewpage("Shopping......");},
                    ),
                    ListTile(
                      leading: Icon(Icons.account_balance_wallet,size: 30.0,),
                      title: Text("My Passbook"),
                      subtitle: Text('wallet,Bank Balance'),
                      trailing: Icon(Icons.arrow_forward_ios,size: 20.0,),
                      onTap: (){_opennewpage("Shopping......");},
                    ),
                    ListTile(
                      leading: Icon(Icons.card_giftcard,size: 30.0,),
                      title: Text("My Vouchers"),
                      subtitle: Text('Get Cashback'),
                      trailing: Icon(Icons.arrow_forward_ios,size: 20.0,),
                      onTap: (){_opennewpage("Get Cashback......");},
                    ),
                    Divider(height: 15.0,thickness: 5.0,),
                    ListTile(
                      leading: Icon(Icons.language,size: 30.0,),
                      title: Text("Choose Language"),
                      subtitle: Text('use your preferred language'),
                      trailing: Icon(Icons.arrow_forward_ios,size: 20.0,),
                      onTap: (){_opennewpage("Language......");},
                    ),
                    ListTile(
                      leading: Icon(Icons.help_outline,size: 30.0,),
                      title: Text("HelpLine"),
                      subtitle: Text('Open Queries,help,Topic'),
                      trailing: Icon(Icons.arrow_forward_ios,size: 20.0,),
                      onTap: (){_opennewpage("Get Cashback......");},
                    ),
                    Divider(height: 15.0,thickness: 5.0,),
                    ListTile(
                      leading: Icon(Icons.settings_applications,size: 30.0,),
                      title: Text("Payment Settings"),
                      subtitle: Text('Saved,Automatic and others'),
                      trailing: Icon(Icons.arrow_forward_ios,size: 20.0,),
                      onTap: (){_opennewpage("Payments");},
                    ),
                    ListTile(
                      leading: Icon(Icons.account_circle,size: 30.0,),
                      title: Text("Profile Settings"),
                      subtitle: Text('Update Profile,Info'),
                      trailing: Icon(Icons.arrow_forward_ios,size: 20.0,),
                      onTap: (){_opennewpage("Profile");},
                    ),
                    ListTile(
                      leading: Icon(Icons.security,size: 30.0,),
                      title: Text("Privacy"),
                      subtitle: Text('Change,Manage,Password'),
                      trailing: Icon(Icons.arrow_forward_ios,size: 20.0,),
                      onTap: (){_opennewpage("Security");},
                    ),

                  ])),
        ));
  }
  void _opennewpage(s) {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (BuildContext context) {
          return new Scaffold(
            appBar:  AppBar(
              automaticallyImplyLeading: true,
              title: Text('Success',
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
            body: Container(
              color: Colors.blueGrey[800],
              child: new Center(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 19.0),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 19.0),
                          child:  FlutterLogo( size: 70.0,),
                        ),
                        Text('This is a New Page and you click on ' + s,
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
