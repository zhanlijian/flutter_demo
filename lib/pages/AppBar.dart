import 'package:flutter/material.dart';

class AppBarPage extends StatefulWidget {
  AppBarPage({Key key}) : super(key: key);
  @override
  _AppBarPageState createState() => new _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text("appbar"),
              // backgroundColor: Colors.red,
              leading: IconButton(
                  icon: Icon(Icons.menu),
                  tooltip: "Search",
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.search),
                    tooltip: "Search",
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    }),
                IconButton(
                    icon: Icon(Icons.more_horiz),
                    tooltip: "more_horiz",
                    onPressed: () {
                      print('more_horiz Pressed');
                    })
              ],
              bottom: TabBar(
                // isScrollable: true,
                controller: TabController(
                    initialIndex: 2, length: 3, vsync: AnimatedListState()),
                tabs: <Widget>[
                  Tab(text: "热门"),
                  Tab(text: "推荐"),
                  Tab(
                    child: Row(
                      children: <Widget>[
                        Text("同城"),
                        Icon(
                          Icons.phone,
                          size: 12,
                        )
                      ],
                    ),
                  )
                ],
                isScrollable: true,
                indicatorColor: Color(0xffff0000),
                indicatorWeight: 2,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: EdgeInsets.only(bottom: 10.0),
                labelPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                labelColor: Color(0xff333333),
                labelStyle: TextStyle(
                  fontSize: 15.0,
                ),
                unselectedLabelColor: Color(0xffffffff),
                unselectedLabelStyle: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              // iconTheme: IconThemeData(color: Colors.blue),
              // textTheme: TextTheme(title: TextStyle(color: Colors.cyan)),
            ),
            body: TabBarView(
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    ListTile(title: Text("这是第一个 tab")),
                    ListTile(title: Text("这是第一个 tab")),
                    ListTile(title: Text("这是第一个 tab"))
                  ],
                ),
                ListView(
                  children: <Widget>[
                    ListTile(title: Text("这是第二个 tab")),
                    ListTile(title: Text("这是第二个 tab")),
                    ListTile(title: Text("这是第二个 tab"))
                  ],
                ),
                ListView(
                  children: <Widget>[
                    ListTile(title: Text("这是同城快递 tab")),
                    ListTile(title: Text("这是同城快递 tab")),
                    ListTile(title: Text("这是同城快递 tab"))
                  ],
                )
              ],
            )));
  }
}
