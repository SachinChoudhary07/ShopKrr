// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/Account/account_screen.dart';
import 'package:shopkrr/Screens/Cart/cart.dart';
import 'package:shopkrr/Screens/Dashboard/Dashboard.dart';
import 'package:shopkrr/Screens/Orders/orders.dart';
import 'package:shopkrr/Screens/categories/categoriesPage.dart';

class CategoriesDetailProvider extends ChangeNotifier {


  final List<Map<String, String>> products = [
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
    {
      'title': 'Women\'s Day T-shirt',
      'price': '\$59.00',
      'imageUrl': 'assets/Mask group.png',
    },
    {
      'title': 'Cotton Polo Shirt',
      'price': '\$39.00',
      'imageUrl': 'assets/Mask group.png',
    },
    {
      'title': 'Cotton-blend Sweatshirt',
      'price': '\$69.00',
      'imageUrl': 'assets/Mask group.png',
    },
  ];

  String _selectedCategory = "All Products";

  // Getter for selected category
  String get selectedCategory => _selectedCategory;

  // Method to update selected category
  void setSelectedCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }




}
