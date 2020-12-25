import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderDetailPage extends StatefulWidget {
  final Map map;
  OrderDetailPage({this.map});
  @override
  State<StatefulWidget> createState() => _OrderDetailPage();
}

class _OrderDetailPage extends State<OrderDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("订单"),),
      ),
      body: Center(
        child: Column(
          children: [
            Text(widget.map["name"]),
            Text(widget.map["info"]),
          ],
        ),
      ),
    );
  }
}

