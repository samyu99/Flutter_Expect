import 'package:flutter/cupertino.dart';
class ActivityIndicatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        middle: Text("Hello! Have a Nice a Day"
        ),
      ),
      child: const Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}