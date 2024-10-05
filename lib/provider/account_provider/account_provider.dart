import 'package:flutter/material.dart';

class AccountProvider with ChangeNotifier {
  bool _isDark = true;

  bool get isDark => _isDark;

  void toggleSwitch() {
    _isDark = !_isDark;
    notifyListeners();
  }
}
