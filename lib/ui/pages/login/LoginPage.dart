import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/login", arguments: "skdf;lajs;lkf");
//          Navigator.push(context, CustomRoute(LoginPage()));
          },
          child: Container(
            child: Text("登录"),
          ),
        ),
      ),
    );
  }
}
