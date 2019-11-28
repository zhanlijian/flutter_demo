import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);
  @override
  _TabBarControllerPageState createState() => new _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  var tabs = <Tab>[];
  TabController _tabController;

  @override
  void dispose() {
    // 生命周期函数 销毁
    super.dispose();
    _tabController.dispose();
  }

  @override
  void initState() {
    // 生命周期函数 初始化
    super.initState();
    tabs = <Tab>[
      Tab(
        text: "Tab1",
      ),
      Tab(
        text: "Tab2",
      ),
      Tab(
        text: "Tab3",
      ),
      Tab(
        text: "Tab4",
      ),
      Tab(
        text: "Tab5",
      ),
      Tab(
        text: "Tab6",
      ),
      Tab(
        text: "Tab7",
      ),
      Tab(
        text: "Tab8",
      ),
      Tab(
        text: "Tab9",
        icon: Icon(
          Icons.phone,
          size: 12,
        ),
      ),
    ];

    _tabController = TabController(vsync: this, length: tabs.length);

    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBarController"),
          bottom: TabBar(
            controller: _tabController,
            tabs: this.tabs,
            isScrollable: true,
            indicatorColor: Color(0xffff0000),
            indicatorWeight: 1,
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
        ),
        body: TabBarView(
            controller: _tabController,
            children: tabs
                .map((Tab tab) => Container(
                      child: Center(
                        child: Text(tab.text),
                      ),
                    ))
                .toList()),
      ),
    );
  }
}
