import 'package:flutter/material.dart';
import '../Form.dart';

class HomaPage extends StatefulWidget {
  HomaPage({Key key}) : super(key: key);

  @override
  _HomaPageState createState() => new _HomaPageState();
}

class _HomaPageState extends State<HomaPage> {
  final List list = new List();
  num countNum = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: list
              .map((i) => ListTile(
                    title: Text(i),
                  ))
              .toList(),
        ),
        Chip(
          label: Text('${this.countNum}'),
        ),
        RaisedButton(
          child: Text("我是button"),
          onPressed: () {
            setState(() {
              this.list.add("133");
              this.list.add("3253453463467333");
            });
          },
        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Text("我是countNum++"),
          onPressed: () {
            setState(() {
              this.countNum++;
            });
          },
        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Text("我是countNum++"),
          textTheme: ButtonTextTheme.primary,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => FormPage(title: "我是合伙人")));
          },
        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Text("调整到form"),
          textTheme: ButtonTextTheme.primary,
          onPressed: () {
            Navigator.pushNamed(context, "/product");
          },
        )
      ],
    );
  }
}
