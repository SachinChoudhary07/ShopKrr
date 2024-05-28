// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/bottomBar/bottombar.dart';
import 'package:shopkrr/constant/const.dart';
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
                  Logo_transparent,
                  height: height / 3.5,
                ),
              ),
              Text(
                signinText,
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
              button(btntxt1, Primary_color, Primary_color, colorwhite, () {
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
