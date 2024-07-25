// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/bottomBar/bottombar.dart';
import 'package:shopkrr/constant/const.dart';
import 'package:shopkrr/widget/widget.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  Logo_transparent,
                  height: height / 3.5,
                ),
              ),
              Text(
                signupText,
                style: const TextStyle(fontFamily: 'Lora', fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height / 26,
              ),
              emailTextField(),
              SizedBox(
                height: height / 26,
              ),
              passwordTextField(),
              const SizedBox(
                height: 4,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  forgotText,
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Primary_color),
                ),
              ),
              SizedBox(
                height: height / 8,
              ),
              button(btntxt2, Primary_color, Primary_color, colorwhite, () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomBarPage(),
                    ));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
