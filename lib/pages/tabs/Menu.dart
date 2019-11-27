import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200.0,
        padding: EdgeInsets.all(5),
        // margin: EdgeInsets.all(5),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              height: 180.0,
              alignment: Alignment.center,
              color: Colors.lightBlue,
              child: ClipOval(
                child: Image.network(
                    "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg",
                    width: 100.0,
                    height: 100.0),
              ),
            ),
            Container(
              height: 180.0,
              color: Colors.amber,
              child: ListView(
                children: <Widget>[
                  Image.network(
                      'https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                  // SizedBox(height: 16.0),
                  Text(
                    '这是一个文本信息',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 180.0,
              child: Text(
                "日出而作，日落而息",
                style: TextStyle(fontSize: 30.0, color: Colors.amber),
              ),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  image: DecorationImage(
                      image: AssetImage("images/sunrise.jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: 180.0,
              color: Colors.deepPurpleAccent,
              child: Image.asset("images/timg.jpg", fit: BoxFit.cover),
            ),
          ],
        ));
  }
}
