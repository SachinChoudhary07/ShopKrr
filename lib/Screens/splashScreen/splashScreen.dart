import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/WelcomeScreens/welcome.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/constant/dimension.dart';
import 'package:shopkrr/services/navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer to navigate after 3 seconds
    Timer(const Duration(seconds: 3), () {
      pushReplacement(
        context,const WelcomeScreen()
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: App,
      backgroundColor: ColorResources.splashBG,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: const BoxDecoration(
                backgroundBlendMode: BlendMode.screen,
                
                color: ColorResources.splashCricle1,
                shape: BoxShape.circle
              ),
              child: Padding(
                padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
                child: Container(
                  padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
                  decoration: const BoxDecoration(
                    color: ColorResources.splashCricle2,
                    shape: BoxShape.circle
                  ),
                  child: const Center(
                    child: Text("S",style: TextStyle(fontSize: 100 ,fontWeight:  FontWeight.w300),),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
