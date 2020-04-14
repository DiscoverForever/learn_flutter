import 'package:flutter/material.dart';
class Counter with ChangeNotifier {
  int _count;
  int get value => _count;
  Counter(this._count);

  void increment() {
    _count++;
    notifyListeners();
  }
}