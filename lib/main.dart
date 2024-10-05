import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shopkrr/Screens/Cart/cart.dart';
import 'package:shopkrr/Screens/categories_detail/category_detail_screen.dart';
import 'package:shopkrr/Screens/splashScreen/splashScreen.dart';
import 'package:shopkrr/provider/account_provider/account_provider.dart';
import 'package:shopkrr/provider/categoryProvider/categoryProvider.dart';
import 'package:shopkrr/provider/category_detail_provider/category_detail_provider.dart';
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
    return MaterialApp(
      title: "ShopKrr",
      debugShowCheckedModeBanner: false,
      // theme: Provider.of<ThemeProvider>(context).darkTheme ? dark : light,
      // theme: dark,
      theme: light,
      darkTheme: dark,
      themeMode: ThemeMode.light,
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
  ];
}
