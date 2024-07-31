// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/bottomBar/bottombar.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/widget/widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                AppConstants.signinText,
                style: TextStyle(fontFamily: 'Lora', fontSize: 26, fontWeight: FontWeight.bold),
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
              button(AppConstants.btntxt1, ColorResources.Primary_color, ColorResources.Primary_color, ColorResources.Primary_color, () {
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
