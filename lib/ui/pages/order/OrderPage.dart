import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:newappframe/generated/l10n.dart';
import 'file:///E:/flutter_demo/new_app_frame/lib/ui/pages/order/OrderDetailPage.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, "/orderDetail",arguments: {"name":"OrderDetailPage", "info":"hahahahahahahahahaha"});
        },
          child: Center(child: Text(S.of(context).order))),
    );
  }
}
