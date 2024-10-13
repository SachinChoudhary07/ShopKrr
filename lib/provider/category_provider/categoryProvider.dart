// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/Account/account_screen.dart';
import 'package:shopkrr/Screens/Cart/cart.dart';
import 'package:shopkrr/Screens/Dashboard/Dashboard.dart';
import 'package:shopkrr/Screens/Orders/orders.dart';
import 'package:shopkrr/Screens/categories/categoriesPage.dart';
import 'package:shopkrr/constant/app_constant.dart';

class CategoriesProvider extends ChangeNotifier {
  int _bottombarzindex = 0;

  int get bottombarzindex => _bottombarzindex;

  final List _bottombarScreens = [
    const DashboardPage(),
    const CategoryPage(),
    const OrdersPage(),
    const CartPage(),
    const AccountPage()
  ];

  final List<Map<String, String>> category = [
    {
      'title': AppConstants.men,
      'price': '\$49.00',
      'imageUrl': AppConstants.mencategory,
    },
    {
      'title': AppConstants.women,
      'imageUrl': AppConstants.womencategory,
    },
   {
      'title': AppConstants.kids,
      'imageUrl': AppConstants.kidscategory,
    },
    {
        'title': AppConstants.bags,
      'imageUrl': AppConstants.bagscategory,
    },
    {
       'title': AppConstants.shoes,
      'imageUrl': AppConstants.shoescategory,
    },

    {
        'title': AppConstants.accessories,
      'imageUrl': AppConstants.accessoriescategory,
    },
  ];

  List get bottombarScreens => _bottombarScreens;

  updateSelectedIndex(int index) {
    _bottombarzindex = index;
    notifyListeners();
  }
}
