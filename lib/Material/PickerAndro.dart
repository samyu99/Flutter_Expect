import 'package:flutter/material.dart';

class PickerAndroDemo extends StatefulWidget {
  @override
  _PickerAndroDemoState createState() => _PickerAndroDemoState();
}

class _PickerAndroDemoState extends State<PickerAndroDemo> {
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Picker Demo',
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
        body:Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("${selectedDate.toLocal()}".split(' ')[0],style: TextStyle(color:Colors.black),),
              SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                    color: Colors.pink[900],
                    padding: EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    child: Text("Show Picker",style: TextStyle(color: Colors.white),),
                    onPressed: () {
                      _selectDate(context);
                    }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
