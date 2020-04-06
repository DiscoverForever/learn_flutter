import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:leancloud_storage/leancloud.dart';
import 'package:learn_flutter/pages/home/index.dart';
import 'package:learn_flutter/pages/item_info/index.dart';
import 'package:learn_flutter/pages/login/login.dart';
import 'package:learn_flutter/pages/mine/index.dart';
import 'package:learn_flutter/pages/movie/movie.dart';
import 'package:learn_flutter/pages/webview_page/index.dart';

void main() {
  initLeancloud();
  return runApp(MyApp());
}

initLeancloud() {
  LeanCloud.initialize();
}

class MyApp extends StatelessWidget {
  final Map<String, Widget Function(BuildContext, RouteSettings)> routes = {
    '/': (context, settings) => Index(),
    '/login': (context, settings) => Login(),
    '/movie': (context, settings) => Movie(),
    '/mine': (context, settings) => Mine(),
    '/item_info': (context, settings) => ItemInfo(),
    '/webview': (context, settings) =>
        WebViewPage(url: (settings.arguments as Map<String, String>)['url'])
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'PingFang',
      ),
      home: Index(),
      onGenerateRoute: _onGenerateRoute,
    );
  }

  Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    return CupertinoPageRoute(
      settings: settings,
      builder: (context) {
        String routeName = settings.name;

        if (routes[routeName] != null) {
          return routes[routeName](context, settings);
        }
        return null;
      },
    );
  }
}
