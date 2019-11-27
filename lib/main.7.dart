import 'package:flutter/material.dart';
import 'res/listData.dart';

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
  List<Widget> _getListData() {
    return listData
        .map((i) => ListTile(
              leading: i["imageUrl"] != ''
                  ? Image.network(
                      i["imageUrl"],
                      width: 50,
                      height: 50,
                    )
                  : Icon(Icons.pages),
              title: Text(i["title"]),
              subtitle: Text(i["author"]),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return ListView(children: this._getListData());
    return ListView.builder(
        reverse: true,
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: listData[index]["imageUrl"] != ''
                ? Image.network(
                    listData[index]["imageUrl"],
                    width: 50,
                    height: 50,
                  )
                : Icon(Icons.pages),
            title: Text(listData[index]["title"]),
            subtitle: Text(listData[index]["author"]),
          );
        });
  }
}
