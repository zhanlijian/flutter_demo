import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("测试AppBar"),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.cyan),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        "我是flutter",
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.blue, fontSize: 45.0),
      ),
    );
  }
}
