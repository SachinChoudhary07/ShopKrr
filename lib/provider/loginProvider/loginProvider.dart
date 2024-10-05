// ignore_for_file: file_names

import 'package:flutter/material.dart';


class LoginProvider extends ChangeNotifier {
  bool isobscure = true;
  bool isconfirmobscure = true;

 

  updateObscure() {
    isobscure = !isobscure;
    notifyListeners();
  }
  updateConfirmObscure() {
    isconfirmobscure = !isconfirmobscure;
    notifyListeners();
  }
}
