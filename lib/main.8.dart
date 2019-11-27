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
        .map((i) => Container(
                child: Column(
              children: <Widget>[
                Image.network(i["imageUrl"]),
                SizedBox(height: 15),
                Text(i["title"])
              ],
            )))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    // return GridView.count(
    //   crossAxisCount: 2,
    //   crossAxisSpacing: 10,
    //   mainAxisSpacing: 10,
    //   padding: EdgeInsets.all(10),
    //   children: this._getListData(),
    // );
    return GridView.builder(
      itemCount: listData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Container(
          child: Column(children: <Widget>[
            listData[index]["imageUrl"] == ''
                ? Icon(Icons.ac_unit)
                : Image.network(listData[index]["imageUrl"]),
            SizedBox(height: 15),
            Text(listData[index]["title"])
          ]),
          decoration:
              BoxDecoration(border: Border.all(color: Colors.brown, width: 2)),
        );
      },
    );
  }
}
