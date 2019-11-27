import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  final String title;
  FormPage({this.title = "我是表单"});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Text("返回"),
          onPressed: () {
            Navigator.of(context).pop();
          }),
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("我是title"),
            subtitle: Text("我是subtilte"),
          ),
          ListTile(
            title: Text("我是title"),
            subtitle: Text("我是subtilte"),
          ),
          ListTile(
            title: Text("我是title"),
            subtitle: Text("我是subtilte"),
          ),
          ListTile(
            title: Text("我是title"),
            subtitle: Text("我是subtilte"),
          ),
        ],
      ),
    );
  }
}
