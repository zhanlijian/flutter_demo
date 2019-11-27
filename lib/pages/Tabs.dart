import 'package:flutter/material.dart';
import "tabs/Home.dart";
import "tabs/Alarm.dart";
import "tabs/Shopping.dart";
import "tabs/Menu.dart";

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => new _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _tabList = [HomaPage(), AlarmPage(), ShoppingPage(), MenuPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter Demo"),
      ),
      body: this._tabList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首页"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text("消息")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text("购物车")),
          BottomNavigationBarItem(icon: Icon(Icons.menu), title: Text("我的")),
        ],
      ),
    );
  }
}
