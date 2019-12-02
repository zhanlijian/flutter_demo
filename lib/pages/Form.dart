import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  final String title;
  FormPage({Key key, this.title}) : super(key: key);
  @override
  _FormPageState createState() => new _FormPageState(title: this.title);
}

class _FormPageState extends State<FormPage> {
// class FormPage extends StatelessWidget {
  final String title;
  TextEditingController _username = TextEditingController();
  _FormPageState({this.title = "我是表单"});

  @override
  void initState() {
    super.initState();
    _username.text = '这是文本框初始值';
  }

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
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              // maxLines: 5,
              // obscureText: true,
              decoration: InputDecoration(
                  hintText: "密码框",
                  // border: OutlineInputBorder(),
                  fillColor: Colors.blue.shade100,
                  filled: true,
                  helperText: 'help',
                  prefixIcon: Icon(Icons.local_airport),
                  suffixText: 'airport',
                  labelText: "表单名称",
                  labelStyle: TextStyle(color: Colors.blue)),
              controller: _username,
              onChanged: (value) {
                print(value);
                setState(() {
                  this._username.text = value;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
