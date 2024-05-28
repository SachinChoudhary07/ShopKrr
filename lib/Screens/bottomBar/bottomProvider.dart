import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/Account/Profile.dart';
import 'package:shopkrr/Screens/Cart/cart.dart';
import 'package:shopkrr/Screens/Dashboard/Dashboard.dart';
import 'package:shopkrr/Screens/Orders/orders.dart';
import 'package:shopkrr/Screens/categories/categoriesPage.dart';

class BottomNavbarModelPage extends ChangeNotifier {
  int _bottombarzindex = 0;

  int get bottombarzindex => _bottombarzindex;

  final List _bottombarScreens = [
    const DashboardPage(), 
    const CategoryPage(),
     const OrdersPage(), 
     const CartPage(),
      const ProfilePage()];

  List get bottombarScreens => _bottombarScreens;

  updateSelectedIndex(int index) {
    _bottombarzindex = index;
    notifyListeners();
  }
}
