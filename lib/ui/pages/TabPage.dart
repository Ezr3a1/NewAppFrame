import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newappframe/generated/l10n.dart';

import 'home/HomePage.dart';
import 'message/MessagePage.dart';
import 'mine/MinePage.dart';
import 'news/NewsPage.dart';
import 'order/OrderPage.dart';

List<Widget> pages = <Widget>[
  HomePage(),
  MessagePage(),
  NewsPage(),
  OrderPage(),
  MinePage()
];

class TabPage extends StatefulWidget {
  int selectedIndex;

  @override
  State<StatefulWidget> createState() {
    return _TabPage();
  }

  TabPage({this.selectedIndex = 0});
}

class _TabPage extends State<TabPage> {

  var _pageController = PageController();
  DateTime _lastPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          if (_lastPressed == null ||
              DateTime.now().difference(_lastPressed) > Duration(seconds: 1)) {
            //两次点击间隔超过1秒则重新计时
            _lastPressed = DateTime.now();
            return false;
          }
          return true;
        },
        child: PageView.builder(
          itemBuilder: (ctx, index) => pages[index],
          itemCount: pages.length,
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: (index) {
            setState(() {
              widget.selectedIndex = index;
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: S.of(context).home,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted),
            label: S.of(context).message,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            label: S.of(context).news,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_split),
            label: S.of(context).order,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_emoticon),
            label: S.of(context).mine,
          ),
        ],
        currentIndex: widget.selectedIndex,
        onTap: (index) {
          _pageController.jumpToPage(index);
        },
      ),
    );
  }

  @override
  void initState() {
    // 检查更新
    // checkAppUpdate(context);
    super.initState();
  }
}
