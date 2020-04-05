import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/home/index.dart';
import 'package:learn_flutter/pages/item_info/index.dart';
import 'package:learn_flutter/pages/login/login.dart';
import 'package:learn_flutter/pages/mine/index.dart';
import 'package:learn_flutter/pages/movie/movie.dart';
import 'package:learn_flutter/pages/webview_page/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "PingFang",
      ),
      home: Index(),
      routes: {
        '/login': (BuildContext context) => Login(),
        '/movie': (BuildContext context) => Movie(),
        '/mine': (BuildContext context) => Mine(),
        '/item_info': (BuildContext context) =>
            ItemInfo(itemId: ModalRoute.of(context).settings.arguments),
        '/webview': (BuildContext context) => WebViewPage(
              url: (ModalRoute.of(context).settings.arguments
                  as Map<String, String>)['url'],
            )
      },
    );
  }
}
