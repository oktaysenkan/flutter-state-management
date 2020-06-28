import 'package:flutter/material.dart';

class CounterState with ChangeNotifier {
  int _value = 0;

  int get value => _value;

  increment() {
    _value++;
    notifyListeners();
  }
}
