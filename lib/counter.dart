import 'package:flutter/material.dart';

// with 키워드 추상키워드를 선택적으로 사용?
class Counter with ChangeNotifier {
  int _counter = 0;

  // getter 추가
  int get counter => _counter;

  void increment() {
    _counter++;

    // counter를 쓰고 있는 모든 곳에 알린다.
    notifyListeners();
  }
}