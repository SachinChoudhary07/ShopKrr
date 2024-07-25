import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shopkrr/Screens/splashScreen/splashScreen.dart';
import 'package:shopkrr/theme/dark_theme.dart';
import 'package:shopkrr/theme/light_theme.dart';

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
      home: const SplashScreen(),
    );
  }
}

List<SingleChildWidget> providers() {
  return [
    // ChangeNotifierProvider(create: (context) => SplashProvider()),
    // ChangeNotifierProvider(create: (context) => ThemeProvider()),
    // ChangeNotifierProvider(create: (context) => WelcomeProvider()),
    // ChangeNotifierProvider(create: (context) => SignInProvider()),
    // ChangeNotifierProvider(create: (context) => SignUpProvider()),
    // ChangeNotifierProvider(create: (context) => ForgotPasswordProvider()),
    // ChangeNotifierProvider(create: (context) => HealthAssessmentProvider()),
  ];
}
