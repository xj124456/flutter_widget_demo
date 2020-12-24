import 'package:flutter/material.dart';
import '../pages/index.dart';
import '../pages/tabbar.dart';
import 'package:Demo/pages/InkWell.dart';
import 'package:Demo/pages/ListTile.dart';
import 'package:Demo/pages/Icon.dart';

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
      '/listtile': (context) => ListTilePage(),
      '/icon': (context) => IconPage(),
    };
    return routes;
  }
}
