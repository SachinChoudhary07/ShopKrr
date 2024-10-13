
import 'package:flutter/material.dart';

class DashboardProvider extends ChangeNotifier {


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


}
