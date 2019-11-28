import 'package:flutter/material.dart';

import '../pages/Tabs.dart';
import '../pages/Form.dart';
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';

final routes = {
  "/": (context) => Tabs(),
  "/form": (context) => FormPage(),
  "/product": (context) => ProductPage(),
  "/product-info": (context, {arguments}) =>
      ProductInfoPage(arguments: arguments),
};

//固定写法
Function onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
