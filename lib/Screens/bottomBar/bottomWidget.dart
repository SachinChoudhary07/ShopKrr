import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

Widget Bottombarwidget(model) {
  return FlashyTabBar(
    selectedIndex: model.bottombarzindex,
    showElevation: true,
    onItemSelected: (index) {
      model.updateSelectedIndex(index);
    },
    items: [
      FlashyTabBarItem(
        icon: const Icon(Icons.other_houses_sharp),
        title: const Text('Home'),
      ),
      FlashyTabBarItem(
        icon: const Icon(Icons.category),
        title: const Text('Category'),
      ),
      FlashyTabBarItem(
        icon: const Icon(Icons.offline_pin_rounded),
        title: const Text('Orders'),
      ),
      FlashyTabBarItem(
        icon: const Icon(Icons.shopping_bag),
        title: const Text('Cart'),
      ),
      FlashyTabBarItem(
        icon: const Icon(Icons.person_outline_sharp),
        title: const Text('Profile'),
      ),
    ],
  );
}
