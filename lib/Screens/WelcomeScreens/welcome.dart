import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/AuthScreens/Login/loginPage.dart';
import 'package:shopkrr/Screens/AuthScreens/SignUp/signupPage.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/widget/widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 180,
              child: Text(
                AppConstants.title,
                style: TextStyle(fontSize: 160, fontWeight: FontWeight.bold, fontFamily: 'Lora', color: ColorResources.blue10),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              AppConstants.heading,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24, fontFamily: 'Outfit'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                AppConstants.subTitle,
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            // button(btntxt1, Primary_color, Primary_color, colorwhite, () {
            //   Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const LoginPage(),
            //       ));
            // }),
            // const Text("Or"),
            // button(btntxt2, colorwhite, colorblack, colorblack, () {
            //   Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const SignupPage(),
            //       ));
            // }),
          ],
        ),
      ),
    );
  }
}
