import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);
  @override
  _ProductPageState createState() => new _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是商品"),
      ),
      body: Container(
        child: RaisedButton(
          child: Text("跳转到详情"),
          onPressed: () {
            Navigator.pushNamed(context, "/product-info",
                arguments: {"sun": "sun"});
          },
        ),
      ),
    );
  }
}
