import 'package:flutter/material.dart';

class AppBarPage extends StatefulWidget {
  AppBarPage({Key key}) : super(key: key);
  @override
  _AppBarPageState createState() => new _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("appbar"),
          backgroundColor: Colors.red,
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
          ]),
      body: Text("appBar 现场演示"),
    );
  }
}
