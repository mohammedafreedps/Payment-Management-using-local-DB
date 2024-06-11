import 'package:flutter/material.dart';

class DashBoardProvider extends ChangeNotifier{
  bool isSearchFocus = true;
  bool showDetailTest = true;

  void checkSearchFocused(bool isFocus){
    isSearchFocus = isFocus;
    notifyListeners();
  }
  void test(bool isFocus){
    showDetailTest = isFocus;
    notifyListeners();
  }
}