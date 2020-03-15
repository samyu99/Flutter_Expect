import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: login(),
  theme: ThemeData(
      primarySwatch: Colors.blueGrey
  ),
)
);

class login extends StatefulWidget  {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;
  @override
  void initState(){
    super.initState();
    _iconAnimationController=new AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 800),
    );
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController,
        curve: Curves.bounceInOut);
    _iconAnimation.addListener(()=>this.setState((){}));
    _iconAnimationController.forward();
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.blueGrey
        ),
        home:Scaffold(
            backgroundColor: Colors.black87,
            appBar:  AppBar(
              automaticallyImplyLeading: true,
              title: Text('Login Demo',
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
            body: new Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image(
                  image: new AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.fill,
                  color: Colors.black87,
                  colorBlendMode: BlendMode.darken,
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new FlutterLogo(
                      size: _iconAnimation.value*100,
                    ),
                    Divider(height: 30.0),
                    new Form(
                      child:Theme(
                        data: new ThemeData(
                          brightness: Brightness.dark,
                          inputDecorationTheme: new InputDecorationTheme(
                            labelStyle: new TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 15.0,
                            ),

                          ),
                        ),
                        child: Container(
                          padding:const EdgeInsets.fromLTRB(40.0, 20.0, 30.0, 40.0),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[

                              new TextFormField(
                                decoration: new InputDecoration(
                                  labelText: 'Enter Email ID',
                                  fillColor: Colors.white,

                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              SizedBox(height: 20.0),
                              new TextFormField(
                                decoration: new InputDecoration(
                                    labelText: 'Enter Password'
                                ),
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true,
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),
                    SizedBox(height: 10.0),
                    RaisedButton(
                      padding: EdgeInsets.all(20.0),
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      child: new Text('Login'),
                      onPressed: () {

                      },
                      splashColor: Colors.lightBlueAccent,
                    )

                  ],
                ),
              ],

            )

        ));
  }

}