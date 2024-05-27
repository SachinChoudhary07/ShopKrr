import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/AuthScreens/Login/loginPage.dart';
import 'package:shopkrr/Screens/AuthScreens/SignUp/signupPage.dart';
import 'package:shopkrr/constant/const.dart';
import 'package:shopkrr/widget/widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 180,
              child: Text(
                title,
                style: TextStyle(fontSize: 160, fontWeight: FontWeight.bold, fontFamily: 'Lora', color: Primary_color),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              heading,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 24, fontFamily: 'Outfit'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                subTitle,
                maxLines: 3,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            button(btntxt1, Primary_color, Primary_color, colorwhite, () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ));
            }),
            const Text("Or"),
            button(btntxt2, colorwhite, colorblack, colorblack, () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignupPage(),
                  ));
            }),
          ],
        ),
      ),
    );
  }
}
