import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final Duration _page_transition_duration = Duration(milliseconds: 250);

class ZKSlideRouteBuilder extends PageRouteBuilder {
  final Widget widget;

  ZKSlideRouteBuilder(this.widget, {Duration duration})
      : super(
            transitionDuration: duration ?? _page_transition_duration, //过渡时间
            pageBuilder: (
              //构造器
              BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
            ) =>
                widget,
            transitionsBuilder: (BuildContext context,
                Animation<double> animation1,
                Animation<double> animation2,
                Widget child) {
              return SlideTransition(
                position:
                    Tween<Offset>(begin: const Offset(1, 0.0), end: Offset.zero)
                        .animate(
                  CurvedAnimation(
                    parent: animation1,
                    curve: Curves.fastOutSlowIn, //动画曲线
                  ),
                ),
                child: child,
              );
            });
}

class ZKSlideTransitionsBuilder extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(
      PageRoute<T> route,
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return SlideTransition(
      position:
          Tween<Offset>(begin: const Offset(1, 0.0), end: Offset.zero).animate(
        CurvedAnimation(
          parent: animation,
          curve: Curves.fastOutSlowIn, //动画曲线
        ),
      ),
      child: child,
    );
  }
}
