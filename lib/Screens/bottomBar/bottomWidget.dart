import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

Widget Bottombarwidget(model,BuildContext context) {
  return FlashyTabBar(
    backgroundColor: Theme.of(context).colorScheme.primary,
    selectedIndex: model.bottombarzindex,

    showElevation: true,
    onItemSelected: (index) {
      model.updateSelectedIndex(index);
    },
    items: [
      FlashyTabBarItem(
        icon:  Icon(Icons.other_houses_sharp,color: Theme.of(context).colorScheme.onSurface,),
        title:  Text('Home',style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
      ),
      FlashyTabBarItem(
        icon:  Icon(Icons.category,color: Theme.of(context).colorScheme.onSurface),
        title:  Text('Category',style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
      ),
      FlashyTabBarItem(
        icon:  Icon(Icons.offline_pin_rounded,color: Theme.of(context).colorScheme.onSurface),
        title:  Text('Orders',style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
      ),
      FlashyTabBarItem(

        icon:  Icon(Icons.shopping_bag,color: Theme.of(context).colorScheme.onSurface),
        title:  Text('Cart',style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
      ),
      FlashyTabBarItem(
        icon:  Icon(Icons.person_outline_sharp,color: Theme.of(context).colorScheme.onSurface),
        title:  Text('Profile',style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
      ),
    ],
  );
}
