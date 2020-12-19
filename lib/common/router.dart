import 'package:flutter/material.dart';
import '../pages/index.dart';
import '../pages/tabbar.dart';
import 'package:Demo/pages/InkWell.dart';

class NameRouter {
  static Map<String, WidgetBuilder> routes;
  // 初始化APP
  static Widget initApp() {
    return MaterialApp(
      initialRoute: '/index',
      routes: NameRouter.initRoutes(),
    );
  }

  // 初始化路由
  static initRoutes() {
    routes = {
      '/index': (context) => IndexPage(),
      '/tabbar': (context) => TabbarPage(),
      '/inkwell': (context) => InkWellPage(),
    };
    return routes;
  }
}
