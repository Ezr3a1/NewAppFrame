import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newappframe/provider/provider_widget.dart';
import 'package:newappframe/view_models/login/LoginModel.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashPage();
}

class _SplashPage extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Center(
            child: Container(
              child: Text("启动页"),
            ),
          ),
          ProviderWidget<LoginModel>(
            model: LoginModel(),
            onModelReady: (model) {

            },
            builder: (context, model, child) {
              return RaisedButton(
                child: Text("登录"),
                onPressed: model.isBusy ? null : () {
                  Navigator.pushReplacementNamed(context, '/tab', arguments: 0);
                  // model
                  //     .login()
                  //     .then((value) {
                  //   if (value) {
                  //     Navigator.pushReplacementNamed(context, '/tab', arguments: 0);
                  //   } else {
                  //     model.showErrorMessage(context);
                  //   }
                  // });
                },
              );
            }
          )
        ],
      ),
    );
  }
}
