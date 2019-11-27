import 'package:flutter/material.dart';

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
            body: HomeContent1()));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          child: Image.network(
        "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg",
        alignment: Alignment.center,
        // color: Colors.red,
        colorBlendMode: BlendMode
            .colorDodge, // repeat: ImageRepeat.repeatX, fit: BoxFit.cover, ),
        height: 400.0,
        width: 300.0,
        // decoration: BoxDecoration(color: Colors.yellow),
      )),
    );
  }
}

class HomeContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          alignment: Alignment.center,
          // child: Image.asset("images/timg.jpg", fit: BoxFit.cover),
          // width: 300.0,
          // height: 300.0,
          // decoration: BoxDecoration(color: Colors.yellow),
          // child: Text(
          //   'data',
          //   style: TextStyle(color: Colors.greenAccent, fontSize: 30.0),
          // ),
          child: ClipOval(
              child: Image.network(
            "https://www.itying.com/images/201905/thumb_img/1101_thumb_G_1557845381862.jpg",
            width: 150.0,
            height: 150.0,
          )),
          width: 150.0,
          height: 150.0,
          decoration: BoxDecoration(
              // color: Colors.yellow,
              // borderRadius: BorderRadius.circular(150),
              // image: DecorationImage(
              //     image: AssetImage('images/timg.jpg'), fit: BoxFit.cover)
              // image: DecorationImage(
              //     image: NetworkImage(
              //         'https://www.itying.com/images/201905/thumb_img/1101_thumb_G_1557845381862.jpg'),
              //     fit: BoxFit.cover),
              )),
    );
  }
}
