import 'package:flutter/material.dart';
import 'package:uidesign/Styles/Animation/animations/split_widget/split_diagonal_widget.dart';


import 'split_half_widget.dart';

class MainSplitWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Split Widget",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pink[900],
        elevation: 5.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SplitHalfWidget(
              child: Center(
                child: Text(
                  "FLUTTER",
                  style: Theme.of(context).textTheme.display2,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[500],
              child: SplitDiagonalWidget(
                child: Image.asset(
                  "assets/images/dash_dart.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              alignment: Alignment.center,
              color: Colors.grey[300],
              child: SplitHalfWidget(
                child: FlutterLogo(
                  size: MediaQuery.of(context).size.width / 3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
