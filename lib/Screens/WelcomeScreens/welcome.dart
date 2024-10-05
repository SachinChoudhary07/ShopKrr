import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/AuthScreens/Login/loginPage.dart';
import 'package:shopkrr/Screens/WelcomeScreens/welcomepages.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/constant/ui_helper.dart';
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
    double width = Helper.mediaQueryWidth(context, 1);
    double height = Helper.mediaQueryHeight(context, 1);
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
          right: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: _currentIndex == index ? 12 : 8,
                height: _currentIndex == index ? 12 : 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? ColorResources.secondaryColorDark
                      : ColorResources.white,
                ),
              );
            }),
          ),
        ),
        // Next / Skip Button
        Positioned(
          bottom: height * .18,
          left: width * .1,
          child:IconButton(
                  icon: const Icon(
                    Icons.play_arrow_outlined,
                    color: ColorResources.grey,
                    size: 30,
                  ),
                  style: const ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(ColorResources.white),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (_currentIndex == 2) {
                      pushReplacement(context, const LoginPage());
                    } else {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
        ),
      ]),
    );
  }
}
