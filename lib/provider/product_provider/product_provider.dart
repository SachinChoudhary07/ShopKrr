import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  // List of available colors and sizes
  final List<Color> _availableColors = [Colors.brown, Colors.grey, Colors.blue];
  final List<String> _availableSizes = ['S', 'M', 'L', 'XL'];

  // Variables to store selected color and size
  Color _selectedColor = Colors.brown;
  String _selectedSize = 'S';

  // Image slider logic
  final List<String> _imagePaths = [
    'assets/Mask group.png',
    'assets/Mask group.png',
    'assets/Mask group.png',
  ];
  int _currentIndex = 0;

  List<Color> get availableColors => _availableColors;
  List<String> get availableSizes => _availableSizes;
  Color get selectedColor => _selectedColor;
  String get selectedSize => _selectedSize;

  List<String> get imagePaths => _imagePaths;
  int get currentIndex => _currentIndex;

  void selectColor(Color color) {
    _selectedColor = color;
    notifyListeners();
  }

  void selectSize(String size) {
    _selectedSize = size;
    notifyListeners();
  }

  void updateImageIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
