import 'package:flutter/material.dart';

class OnboardingProvider with ChangeNotifier {
  bool value = false;

  bool getCheckValue() {
    return value;
  }

  void setCheckValue(bool checkValue) {
    value = checkValue;
    notifyListeners();
  }
}
