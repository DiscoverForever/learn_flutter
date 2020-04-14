import 'package:flutter/material.dart';

class Global with ChangeNotifier {
  ThemeData _themeData = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    primarySwatch: Colors.blue,
    fontFamily: 'PingFang',
  );
  // Global(this._themeData);
  get themeData => _themeData;
  toggleTheme(ThemeData payload) {
    _themeData = payload;
    ChangeNotifier();
  }
}