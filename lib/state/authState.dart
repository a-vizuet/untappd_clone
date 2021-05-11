import 'package:flutter/widgets.dart';

class AuthState extends ChangeNotifier {
  bool _isBusy;
  bool get isbusy => _isBusy;
  set loading(bool value){
    _isBusy = value;
    notifyListeners();
  }

  int _pageIndex = 0;
  int get pageIndex {
     return _pageIndex;
  } 
  set setpageIndex(int index){
    _pageIndex = index;
    notifyListeners();
  }
}
