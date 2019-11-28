import 'package:flutter/material.dart';

class ProductInfoPage extends StatefulWidget {
  final Map arguments;
  ProductInfoPage({Key key, this.arguments}) : super(key: key);
  @override
  _ProductInfoPageState createState() =>
      new _ProductInfoPageState(arguments: this.arguments);
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  final Map arguments;
  _ProductInfoPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品详情"),
      ),
      body: Container(
        child: Image.asset('images/${this.arguments["sun"]}rise.jpg',
            fit: BoxFit.cover),
        // child: Text('data${arguments["sun"]}'),
      ),
    );
  }
}
