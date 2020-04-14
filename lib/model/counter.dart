import 'package:flutter/material.dart';
class Counter with ChangeNotifier {//1
  int _count;
  int get value => _count;
  Counter(this._count);

  void increment() {
    _count++;
    notifyListeners();
  }
}