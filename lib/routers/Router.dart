import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newappframe/routers/HomeRouter.dart';
import 'package:newappframe/ui/pages/SplashPage.dart';
import 'package:newappframe/ui/pages/TabPage.dart';
import 'package:newappframe/ui/pages/UnfoundPage.dart';
import 'package:newappframe/ui/pages/home/HomePage.dart';
import 'package:newappframe/ui/pages/login/LoginPage.dart';

import 'OrderRouter.dart';


/// 路由表
var _routers = <String, WidgetBuilder>{
  '/': (context, {arguments}) => SplashPage(),
  '/404': (context, {arguments}) => UnfoundPage(),
  '/login': (context, {arguments}) => LoginPage(),
  '/home': (context, {arguments}) => HomePage(),
  '/tab': (context, {arguments}) => TabPage(selectedIndex: arguments),
} ..addAll(orderRouters)
  ..addAll(homeRouters);

final RouteFactory onGenerateRoute = (RouteSettings routeSettings) {
  return MaterialPageRoute(
      builder: (buildContext) {
        String name = routeSettings.name;
        Function pageContentBuilder = _routers[name];

        if (pageContentBuilder == null) return _routers['/404'](buildContext);

        return pageContentBuilder(buildContext,
            arguments: routeSettings.arguments);
      },
      fullscreenDialog: true);
};
