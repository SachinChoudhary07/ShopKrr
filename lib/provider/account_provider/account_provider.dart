import 'package:flutter/material.dart';

class AccountProvider with ChangeNotifier {
  bool _isSwitched = false;

  bool get isSwitched => _isSwitched;

  void toggleSwitch(bool value) {
    _isSwitched = value;
    notifyListeners();
  }
}
