// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/AuthScreens/SignUp/signupPage.dart';
import 'package:shopkrr/Screens/AuthScreens/auth_widget.dart';
import 'package:shopkrr/Screens/bottomBar/bottombar.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/ui_helper.dart';
import 'package:shopkrr/services/navigation.dart';
import 'package:shopkrr/widget/widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = Helper.mediaQueryHeight(context, 1);
    double width = Helper.mediaQueryWidth(context, 1);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: width,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                child: Image.asset(
                  AppConstants.loginImage,
                  height: height / 3,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Helper.heightSizedBox(
              height * .02,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: phoneTextField(
                context,
                phoneController,
              ),
            ),
            Helper.heightSizedBox(
              height * .01,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: passwordTextField(context, AppConstants.password),
            ),
            Helper.heightSizedBox(height * .01),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  AppConstants.forgotText,
                  textAlign: TextAlign.end,
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
              ),
            ),
            Helper.heightSizedBox(
              height * .04,
            ),
            button(
              context,
              AppConstants.btntxt1,
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).colorScheme.tertiary,
              () {
                push(context, const BottomBarPage());
              },
            ),
            Helper.heightSizedBox(
              height * .02,
            ),
            googleButton(context),
            Helper.heightSizedBox(
              height * .01,
            ),
            facebookButton(context),
            Helper.heightSizedBox(
              height * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ?",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.onSurface),
                ),
                TextButton(
                  onPressed: () {
                    push(context, const SignupPage());
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
