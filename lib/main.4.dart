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
              title: Text("flutter Demo"),
            ),
            body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Text(
          "我是一个文本带回家而无法喝酒人人第三方第三方第三方技术的第三方就是被你",
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(
              fontSize: 30.0,
              color: Colors.red,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5),
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.blue, width: 2.0),
          // borderRadius: BorderRadius.all(Radius.circular(5.0)),
          borderRadius: BorderRadius.circular(5.0),
        ),
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
      ),
    );
  }
}
