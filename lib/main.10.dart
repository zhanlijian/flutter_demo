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
    return ListView(
        children: listData
            .map((i) => Card(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 20.0 / 9.0,
                        child: i["imageUrl"] == ''
                            ? Image.asset('images/timg.jpg', fit: BoxFit.cover)
                            : Image.network(i["imageUrl"], fit: BoxFit.cover),
                      ),
                      ListTile(
                        title: Text(i["title"]),
                        subtitle: Text(i["author"]),
                        leading: CircleAvatar(
                          backgroundImage: i["imageUrl"] == ''
                              ? AssetImage('images/timg.jpg')
                              : NetworkImage(i["imageUrl"]),
                        ),
                      )
                    ],
                  ),
                ))
            .toList());
  }
}
