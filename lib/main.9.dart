import 'package:flutter/material.dart';

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
    // return Padding(
    //     padding: EdgeInsets.all(10),
    //     child: Column(
    //       children: <Widget>[
    //         Row(
    //           children: <Widget>[
    //             Expanded(
    //               flex: 1,
    //               child: Container(
    //                 height: 150,
    //                 color: Colors.blue,
    //               ),
    //             )
    //           ],
    //         ),
    //         SizedBox(height: 10),
    //         Row(
    //           children: <Widget>[
    //             Expanded(
    //               flex: 2,
    //               child: Container(
    //                   height: 150,
    //                   child: Image.network(
    //                       'https://www.itying.com/images/flutter/1.png',
    //                       fit: BoxFit.cover)),
    //             ),
    //             SizedBox(width: 10),
    //             Expanded(
    //               flex: 1,
    //               child: Container(
    //                   height: 150,
    //                   child: ListView(
    //                     children: <Widget>[
    //                       Image.network(
    //                           'https://www.itying.com/images/flutter/2.png',
    //                           fit: BoxFit.cover),
    //                       SizedBox(height: 10),
    //                       Image.network(
    //                           'https://www.itying.com/images/flutter/3.png',
    //                           fit: BoxFit.cover)
    //                     ],
    //                   )),
    //             )
    //           ],
    //         )
    //       ],
    //     ));
    return Center(
      child: Container(
        width: 300,
        height: 400,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.blue, width: 2)),
        child: Stack(
          children: <Widget>[
            Image.network('https://www.itying.com/images/flutter/3.png',
                fit: BoxFit.cover),
            Align(
              alignment: Alignment.center,
              child: Text("我是一个文本",
                  style: TextStyle(color: Colors.white, fontSize: 25)),
            )
          ],
        ),
      ),
    );
  }
}
