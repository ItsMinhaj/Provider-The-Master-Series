import 'package:flutter/cupertino.dart';

class SliderOpacityProvider with ChangeNotifier {
  double _sliderValue = 1.0;

  double get sliderValue => _sliderValue;

  void setValue(double val) {
    _sliderValue = val;
    notifyListeners();
  }
}
