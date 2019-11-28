import 'package:flutter/material.dart';
import '../Tabs.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登陆"),
      ),
      body: RaisedButton(
        child: Text("确定"),
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => Tabs(index: 1)),
              (route) => route == null);
        },
      ),
    );
  }
}
