import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:PopUp(),
  ));
}
class PopUp extends StatefulWidget {
  @override
  _PopUpState createState() => _PopUpState();
}

class _PopUpState extends State<PopUp> {
  Choice _selectedChoice = choices[0];
  void _select(Choice choice) {
    setState(() {
      _selectedChoice = choice;
    });
  }
  final titlestyle = TextStyle(fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.pink[900],
              title: Text('PopUp Menu Demo',
                style: titlestyle,
              ),
              leading:  IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
                actions:<Widget> [
                  PopupMenuButton<Choice>(
                    initialValue: choices[0],
                    onCanceled: () {
                      print('You have not chossed anything');
                    },
                    tooltip: 'This is tooltip',
                    onSelected: _select,
                    itemBuilder: (BuildContext context) {
                      return choices.map((Choice choice) {
                        return PopupMenuItem<Choice>(
                            height: 50.0,
                            value: choice,
                            child: Text(choice.title)
                        );
                      }).toList();
                    },
                  )
                ]
            ),
                body: bodyWidget(),
        ));
  }
  bodyWidget() {
    return Container(
      child: SelectedOption(choice: _selectedChoice),
    );
  }
}
class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'MyProfile', icon: Icons.account_circle),
  const Choice(title: 'location', icon: Icons.location_on),
  const Choice(title: 'Themes', icon: Icons.color_lens),
  const Choice(title: 'Settings', icon: Icons.settings),
  const Choice(title: 'Help', icon: Icons.help),
  const Choice(title: 'About Us', icon: Icons.live_help),
];

class SelectedOption extends StatelessWidget {
  Choice choice;

  SelectedOption({Key key, this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 140.0, color: Colors.blueGrey),
            Text(
              choice.title,
              style: TextStyle(color: Colors.blueGrey, fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}