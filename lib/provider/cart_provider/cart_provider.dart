import 'package:flutter/material.dart';

class CartItem {
  final String name;
  final String imagePath;
  final double price;
  int quantity;

  CartItem({
    required this.name,
    required this.imagePath,
    required this.price,
    this.quantity = 1,
  });
}

class CartProvider with ChangeNotifier {
  List<CartItem> _cartItems = [
    CartItem(name: 'Basic T-shirt', imagePath: 'assets/Mask group.png', price: 49.00, quantity: 2),
    CartItem(name: 'Cotton T-shirt', imagePath: 'assets/Mask group.png', price: 69.00, quantity: 1),
    CartItem(name: 'Long-sleeved T-shirt', imagePath: 'assets/Mask group.png', price: 49.00, quantity: 2),
    CartItem(name: 'Long-sleeved T-shirt', imagePath: 'assets/Mask group.png', price: 49.00, quantity: 2),
    CartItem(name: 'Long-sleeved T-shirt', imagePath: 'assets/Mask group.png', price: 49.00, quantity: 2),];

  List<CartItem> get cartItems => _cartItems;

  void updateQuantity(int index, int quantity) {
    _cartItems[index].quantity = quantity;
    notifyListeners();
  }
}
