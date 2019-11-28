import 'package:flutter/material.dart';
import "tabs/Home.dart";
import "tabs/Alarm.dart";
import "tabs/Shopping.dart";
import "tabs/Menu.dart";

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => new _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex;
  _TabsState(index) {
    this._currentIndex = index;
  }
  List _tabList = [HomaPage(), AlarmPage(), ShoppingPage(), MenuPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter Demo"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_balance_wallet),
            onPressed: () {
              Navigator.pushNamed(context, '/tabBarController');
            },
          )
        ],
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
