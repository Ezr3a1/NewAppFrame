import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'file:///E:/flutter_demo/new_app_frame/lib/ui/pages/order/OrderDetailPage.dart';


/// 路由表
final orderRouters = <String, WidgetBuilder>{
  '/orderDetail': (context, {arguments}) => OrderDetailPage(map: arguments),
};
