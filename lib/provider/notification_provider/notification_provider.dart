
// provider/notification_provider.dart
import 'package:flutter/material.dart';

class NotificationProvider extends ChangeNotifier {
  // List of notifications (you can replace this with your own data model)
  final List<Map<String, String>> _notifications = [
    {"title": "Order Delivered", "subtitle": "Your order has been delivered.", "time": "2 days ago"},
    {"title": "Order Shipped", "subtitle": "Your order is on the way.", "time": "3 days ago"},
    {"title": "New Offer", "subtitle": "Get 20% off on your next purchase!", "time": "4 days ago"},
    {"title": "Order Received", "subtitle": "We have received your order.", "time": "5 days ago"},
    {"title": "Offer Expiring", "subtitle": "Your coupon is about to expire.", "time": "6 days ago"},
  ];

  // Set of selected indices
  final Set<int> _selectedIndices = {};

  // Getters for notifications and selected indices
  List<Map<String, String>> get notifications => _notifications;
  Set<int> get selectedIndices => _selectedIndices;

  // Method to toggle selection of a notification
  void toggleSelection(int index) {
    if (_selectedIndices.contains(index)) {
      _selectedIndices.remove(index);
    } else {
      _selectedIndices.add(index);
    }
    notifyListeners(); // Notify listeners about the change
  }

  // Method to clear selected notifications (e.g., mark as read)
  void clearSelected() {
    _selectedIndices.clear();
    notifyListeners();
  }
}
