import 'package:flutter/widgets.dart';

class AppState extends ChangeNotifier {
  int _pageIndex = 0;
  int get pageIndex {
     return _pageIndex;
  } 
  set setpageIndex(int index){
    _pageIndex = index;
    notifyListeners();
  }
}
