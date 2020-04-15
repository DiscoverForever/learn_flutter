import 'package:flutter/material.dart';

class Global with ChangeNotifier {

  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    primarySwatch: Colors.red,
    // fontFamily: 'PingFang',
    scaffoldBackgroundColor: Color(0xFFF6F6F6),
    // primaryTextTheme: ThemeData.dark().primaryTextTheme.copyWith()
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    primarySwatch: Colors.red,
    fontFamily: 'PingFang',
    scaffoldBackgroundColor: Color(0xFFF6F6F6),
    // primaryTextTheme: ThemeData.light().primaryTextTheme.copyWith()
  );

  ThemeData _themeData = light;
  // Global(this._themeData);
  get themeData => _themeData;
  toggleTheme(ThemeData payload) {
    _themeData = payload;
    ChangeNotifier();
  }
}