import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: <Widget>[
        MyButton("第1级"),
        MyButton("第2级"),
        MyButton("第3级"),
        MyButton("第4级"),
        MyButton("第5级"),
        MyButton("第6级"),
        MyButton("第7级"),
        MyButton("第8级")
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  MyButton(this.text);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
