import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/AuthScreens/Login/loginPage.dart';
import 'package:shopkrr/Screens/WelcomeScreens/welcomepages.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/services/navigation.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: const [
            WelcomePage(
              image: AppConstants.welcome1,
              title: AppConstants.welcomescreentext,
            ),
            WelcomePage(
              image: AppConstants.welcome2,
              title: AppConstants.welcomescreen2text,
            ),
            WelcomePage(
              image: AppConstants.welcome3,
              title: AppConstants.welcomescreen3text,
            ),
          ],
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: _currentIndex == index ? 12 : 8,
                height: _currentIndex == index ? 12 : 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index ? Colors.blue : Colors.grey,
                ),
              );
            }),
          ),
        ),
        // Next / Skip Button
        Positioned(
          bottom: 30,
          right: 20,
          child: _currentIndex == 2
              ? ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        ColorResources.secondaryColorDark),
                  ),
                  onPressed: () {
                    // Navigate to the next page (Home Page) after onboarding
                    pushReplacement(context, const LoginPage());
                  },
                  child: const Text("Get Started",
                      style: TextStyle(
                          fontSize: 16, color: ColorResources.colorwhite)),
                )
              : TextButton(
                  onPressed: () {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  child:  const Text(
                    "Next",
                    style: TextStyle(fontSize: 20, color: ColorResources.white),
                  ),
                ),
        ),
      ]),
    );
  }
}
