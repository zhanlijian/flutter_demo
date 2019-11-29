import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮组件"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("浮动"),
        onPressed: () {},
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("凸起按钮"),
            onPressed: () {},
          ),
          SizedBox(height: 15),
          RaisedButton(
            child: Text("凸起按钮"),
            textColor: Colors.white,
            color: Colors.blue,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: () {},
          ),
          SizedBox(height: 15),
          FlatButton(
            child: Text("扁平化按钮"),
            onPressed: () {},
          ),
          SizedBox(height: 15),
          OutlineButton(
            child: Text("线框按钮"),
            onPressed: () {},
          ),
          SizedBox(height: 15),
          Text("图标按钮"),
          IconButton(
            icon: Icon(Icons.people),
            onPressed: () {},
          ),
          SizedBox(height: 15),
          ButtonBar(
            children: <Widget>[
              Text("按钮组"),
              IconButton(
                icon: Icon(Icons.people),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
