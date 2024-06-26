import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopkrr/Screens/bottomBar/bottomProvider.dart';
import 'package:shopkrr/Screens/splashScreen/splashScreen.dart';
import 'package:shopkrr/provider/categoryProvider/categoryProvider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomNavbarModelPage(),
        ),
        ChangeNotifierProvider(
          create: (context) => CategoriesProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShopKrrr',
      theme: ThemeData(
        fontFamily: 'Outfit',
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}