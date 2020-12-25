import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:newappframe/config/AppColors.dart';
import 'package:newappframe/generated/l10n.dart';
import 'package:newappframe/routers/Router.dart';
import 'package:newappframe/utils/StorageManager.dart';
import 'package:newappframe/utils/TransitionsKit.dart';
import 'package:oktoast/oktoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageManager.init();
  runApp(MyApp());
  SystemUiOverlayStyle systemUiOverlayStyle =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OKToast(
      //强制用户无法使用
        child: IgnorePointer(
          ignoring: false,
          child: MaterialApp(
            title: 'frame',
            theme: ThemeData(
                primaryColor: AppColors.mainColor,
                visualDensity: VisualDensity.adaptivePlatformDensity,
                pageTransitionsTheme: PageTransitionsTheme(
                  builders: <TargetPlatform, PageTransitionsBuilder>{
                    TargetPlatform.iOS: ZKSlideTransitionsBuilder(),
                    TargetPlatform.android: ZKSlideTransitionsBuilder(),
                  },
                )),
            initialRoute: "/",
            onGenerateRoute: onGenerateRoute,
            localizationsDelegates: {
              RefreshLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              S.delegate,
              RefreshLocalizations.delegate, //下拉刷新
              GlobalCupertinoLocalizations.delegate,
            },
            supportedLocales: S.delegate.supportedLocales,
          ),
        ));
  }
}
