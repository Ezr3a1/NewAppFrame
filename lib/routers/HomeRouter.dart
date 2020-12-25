import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'file:///E:/flutter_demo/new_app_frame/lib/ui/pages/home/HomeDetailPage.dart';


/// 路由表
final homeRouters = <String, WidgetBuilder>{
  '/homeDetail': (context, {arguments}) => HomeDetailPage(map: arguments,),
};
