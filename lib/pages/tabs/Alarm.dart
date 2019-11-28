import 'package:flutter/material.dart';

class AlarmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // actions: <Widget>[
          //   IconButton(
          //     icon: Icon(Icons.search),
          //     onPressed: () {},
          //   )
          // ],
          title: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TabBar(
                  tabs: <Widget>[
                    Tab(text: "热搜"),
                    Tab(text: "新闻"),
                    Tab(text: "社会")
                  ],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Image.asset(
              "images/sunrise.jpg",
              fit: BoxFit.cover,
            ),
            Image.network(
              "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "images/timg.jpg",
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
