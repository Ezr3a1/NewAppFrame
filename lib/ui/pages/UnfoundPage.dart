import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnfoundPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UnfoundPage();
}

class _UnfoundPage extends State<UnfoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("404"),
        ),
      ),
    );
  }
}
