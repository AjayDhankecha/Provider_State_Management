import 'package:flutter/foundation.dart';

class CountProvider with ChangeNotifier {
  int i = 0;

  void changeValue(){
    i++;
    notifyListeners();
  }
}

class SliderProvider with ChangeNotifier{
  double val = 1.0;

  void getValue(newVal){
    val = newVal;
    notifyListeners();
  }

}
