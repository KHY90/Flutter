import 'package:flutter/cupertino.dart';

class CounterViewmodel extends ChangeNotifier{
  int _count = 0;

  int get count => _count; // 자바의 getter와 같은 것

  void increment(){
    _count++;
    notifyListeners();
  }

  void decrement(){
    _count--;
    notifyListeners();
  }



}