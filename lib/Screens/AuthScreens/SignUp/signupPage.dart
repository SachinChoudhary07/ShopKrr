// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/bottomBar/bottombar.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/color_resources.dart';
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
                 AppConstants.logoTransparent,
                  height: height / 3.5,
                ),
              ),
              const Text(
                AppConstants.signupText,
                style: TextStyle(fontFamily: 'Lora', fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height / 26,
              ),
              emailTextField(context),
              SizedBox(
                height: height / 26,
              ),
              passwordTextField(context),
              const SizedBox(
                height: 4,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  AppConstants.forgotText,
                  textAlign: TextAlign.end,
                  style: TextStyle(color: ColorResources.Primary_color),
                ),
              ),
              SizedBox(
                height: height / 8,
              ),
              button(AppConstants.btntxt2, ColorResources.Primary_color, ColorResources.Primary_color, () {
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
