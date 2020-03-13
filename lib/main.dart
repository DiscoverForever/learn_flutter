import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:learn_flutter/pages/home/index.dart';
import 'package:learn_flutter/pages/item_info/index.dart';
import 'package:learn_flutter/pages/login/login.dart';
import 'package:learn_flutter/pages/mine/index.dart';
import 'package:learn_flutter/pages/movie/movie.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Index(),
      routes: {
        '/login': (BuildContext context) => Login(),
        '/movie': (BuildContext context) => Movie(),
        '/mine': (BuildContext context) => Mine(),
        '/item_info': (BuildContext context) => ItemInfo(),
        '/webview': (BuildContext context) => WebviewScaffold(
              url: (ModalRoute.of(context).settings.arguments
                  as Map<String, String>)['url'],
              appBar: AppBar(
                title: Text(
                  'webview',
                  style: TextStyle(color: Colors.black),
                ),
                backgroundColor: Colors.white,
                leading: GestureDetector(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onTap: () {
                    // FlutterWebviewPlugin().close();
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
      },
    );
  }
}
