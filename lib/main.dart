import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shopkrr/Screens/splashScreen/splashScreen.dart';
import 'package:shopkrr/provider/account_provider/account_provider.dart';
import 'package:shopkrr/provider/cart_provider/cart_provider.dart';
import 'package:shopkrr/provider/categoryProvider/categoryProvider.dart';
import 'package:shopkrr/provider/category_detail_provider/category_detail_provider.dart';
import 'package:shopkrr/provider/loginProvider/loginProvider.dart';
import 'package:shopkrr/provider/product_provider/product_provider.dart';
import 'package:shopkrr/provider/notification_provider/notification_provider.dart';
import 'package:shopkrr/provider/orders/myorder_provider.dart';
import 'package:shopkrr/theme/dark_theme.dart';
import 'package:shopkrr/theme/light_theme.dart';

// import 'Screens/AuthScreens/Login/loginPage.dart';
import 'Screens/bottomBar/bottomProvider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: providers(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final provider =
    Provider.of<AccountProvider>(context, listen: true);

    return MaterialApp(
      title: "ShopKrr",
      debugShowCheckedModeBanner: false,
      theme: light,
      darkTheme: dark,
      themeMode: provider.isDark ? ThemeMode.light : ThemeMode.dark,
      home: const SplashScreen(),
      // home: const CartPage(),
    );
  }
}

List<SingleChildWidget> providers() {
  return [
    ChangeNotifierProvider(create: (context) => BottomNavbarModelPage()),
    ChangeNotifierProvider(create: (context) => CategoriesProvider()),
    ChangeNotifierProvider(create: (context) => CategoriesDetailProvider()),
    ChangeNotifierProvider(create: (context) => AccountProvider()),
    ChangeNotifierProvider(create: (context) => LoginProvider()),
    ChangeNotifierProvider(create: (context) => CartProvider()),
    ChangeNotifierProvider(create: (context) => ProductProvider()),
    ChangeNotifierProvider(create: (context) => MyOrdersProvider()),
    ChangeNotifierProvider(create: (context) => NotificationProvider()),
  ];
}
