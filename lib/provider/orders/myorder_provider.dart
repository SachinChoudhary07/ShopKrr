// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyOrdersProvider extends ChangeNotifier {

   final List<Map<String, String>> _products = [
    {
      'title': 'Cotton T-shirt',
      'price': '\$49.00',
      'imageUrl': 'assets/Mask group.png',
    },
    {
      'title': 'Cotton T-shirt Text',
      'price': '\$49.00',
      'imageUrl': 'assets/Mask group.png',
    },
    {
      'title': 'Basic T-shirt',
      'price': '\$49.00',
      'imageUrl': 'assets/Mask group.png',
    },
    // {
    //   'title': 'Women\'s Day T-shirt',
    //   'price': '\$59.00',
    //   'imageUrl': 'assets/Mask group.png',
    // },
    // {
    //   'title': 'Cotton Polo Shirt',
    //   'price': '\$39.00',
    //   'imageUrl': 'assets/Mask group.png',
    // },
    // {
    //   'title': 'Cotton-blend Sweatshirt',
    //   'price': '\$69.00',
    //   'imageUrl': 'assets/Mask group.png',
    // },
  ];

  List<Map<String, String>> get products => _products;

 

  // updateObscure() {
  //   isobscure = !isobscure;
  //   notifyListeners();
  // }
  // updateConfirmObscure() {
  //   isconfirmobscure = !isconfirmobscure;
  //   notifyListeners();
  // }
}
