import 'package:flutter/cupertino.dart';

class HomeDetailPage extends StatefulWidget {
  final Map<dynamic,String> map;
  HomeDetailPage({this.map});
  @override
  _HomeDetailPageState createState() => _HomeDetailPageState();
}

class _HomeDetailPageState extends State<HomeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(widget.map["name"]),
          Text(widget.map["info"]),
        ],
      ),
    );
  }
}
