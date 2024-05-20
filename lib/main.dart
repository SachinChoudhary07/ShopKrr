import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/splashScreen/splashScreen.dart';

void main() {
  runApp(const MyApp());
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