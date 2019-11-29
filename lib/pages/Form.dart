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
      drawer: Drawer(
          child: Column(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://www.itying.com/images/flutter/2.png"),
                    fit: BoxFit.cover)),
            child: ListView(
              children: <Widget>[
                Text(
                  '我是一个头部',
                  style: TextStyle(color: Colors.blue, fontSize: 25),
                )
              ],
            ),
          ),
          ListTile(
              title: Text("个人中心"),
              leading: CircleAvatar(child: Icon(Icons.people)),
              onTap: () {
                Navigator.of(context).pop(); //隐藏侧边栏 抽屉
              }),
          Divider(),
          ListTile(
            title: Text("系统设置"),
            leading: CircleAvatar(child: Icon(Icons.settings)),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          )
        ],
      )),
      endDrawer: Drawer(
          child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("大地老师"),
            accountEmail: Text("dadi@itying.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                  NetworkImage("https://www.itying.com/images/flutter/3.png"),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://www.itying.com/images/flutter/2.png"),
                    fit: BoxFit.cover)),
            otherAccountsPictures: <Widget>[
              Image.network("https://www.itying.com/images/flutter/4.png"),
              Image.network("https://www.itying.com/images/flutter/5.png"),
              Image.network("https://www.itying.com/images/flutter/6.png")
            ],
          ),
          ListTile(
            title: Text("个人中心"),
            leading: CircleAvatar(child: Icon(Icons.people)),
          ),
          Divider(),
          ListTile(
            title: Text("系统设置"),
            leading: CircleAvatar(child: Icon(Icons.settings)),
          )
        ],
      )),
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
