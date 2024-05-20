import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/WelcomeScreens/welcome.dart';
import 'package:shopkrr/constant/const.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const WelcomePage())));
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1,
            color: Primary_color,
            child: Center(
                child: Image(
              image: AssetImage(Logo),
            )),
          ),
        ],
      ),
    );
  }
}
