import 'package:flutter/cupertino.dart';
import 'package:flutter/physics.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:flutter/material.dart';

class PullToRefreshDemo extends StatefulWidget {
  @override
  _PullToRefreshDemoState createState() => _PullToRefreshDemoState();
}

class _PullToRefreshDemoState extends State<PullToRefreshDemo> {

  List<String> items = ["1", "2", "3", "4", "5", "6", "7", "8"];
  RefreshController _refreshController =
  RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    items.add((items.length + 1).toString());
    if (mounted)
      setState(() {

      });
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshConfiguration(
      headerBuilder: () => WaterDropHeader(),        // Configure the default header indicator. If you have the same header indicator for each page, you need to set this
      footerBuilder:  () => ClassicFooter(),        // Configure default bottom indicator
      headerTriggerDistance: 80.0,        // header trigger refresh trigger distance
      springDescription:SpringDescription(stiffness: 170, damping: 16, mass: 1.9),         // custom spring back animate,the props meaning see the flutter api
      maxOverScrollExtent :100, //The maximum dragging range of the head. Set this property if a rush out of the view area occurs
      maxUnderScrollExtent:0, // Maximum dragging range at the bottom
      enableScrollWhenRefreshCompleted: true, //This property is incompatible with PageView and TabBarView. If you need TabBarView to slide left and right, you need to set it to true.
      enableLoadingWhenFailed : true, //In the case of load failure, users can still trigger more loads by gesture pull-up.
      hideFooterWhenNotFull: false, // Disable pull-up to load more functionality when Viewport is less than one screen
      enableBallisticLoad: true, // tr
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text('Pull To Refresh Demo',
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
            margin: EdgeInsets.all(20.0),
            child: SmartRefresher(
              enablePullDown: true,
              enablePullUp: true,
              header: WaterDropHeader(),
              footer: CustomFooter(
                builder: (BuildContext context, LoadStatus mode) {
                  Widget body;
                  if (mode == LoadStatus.idle) {
                    body = Text("pull up load");
                  }
                  else if (mode == LoadStatus.loading) {
                    body = CupertinoActivityIndicator();
                  }
                  else if (mode == LoadStatus.failed) {
                    body = Text("Load Failed!Click retry!");
                  }
                  else if (mode == LoadStatus.canLoading) {
                    body = Text("release to load more");
                  }
                  else {
                    body = Text("No more Data");
                  }
                  return Container(
                    height: 55.0,
                    child: Center(child: body),
                  );
                },
              ),
              controller: _refreshController,
              onRefresh: _onRefresh,
              onLoading: _onLoading,
              child: ListView.builder(
                itemBuilder: (c, i) => Card(child: Center(child: Text(items[i]))),
                itemExtent: 100.0,
                itemCount: items.length,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// from 1.5.0, it is not necessary to add this line
//@override
// void dispose() {
// TODO: implement dispose
//  _refreshController.dispose();
//  super.dispose();
// }
