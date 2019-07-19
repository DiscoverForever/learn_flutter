
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:learn_flutter/pages/home/home.dart';
import 'package:learn_flutter/pages/login/login.dart';
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
      home: MyHomePage(),
      routes: {
        '/login': (BuildContext context) => Login(),
        '/movie': (BuildContext context) => Movie(),
        '/webview': (BuildContext context) => WebviewScaffold(url: 'https://www.baidu.com',),
      },
    );
  }
}



