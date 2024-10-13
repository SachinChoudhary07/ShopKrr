// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/AuthScreens/auth_widget.dart';
import 'package:shopkrr/Screens/AuthScreens/otp_page.dart';
// import 'package:shopkrr/Screens/bottomBar/bottombar.dart';
import 'package:shopkrr/constant/app_constant.dart';
// import 'package:shopkrr/constant/color_resources.dart';
// import 'package:shopkrr/constant/dimension.dart';
import 'package:shopkrr/constant/ui_helper.dart';
import 'package:shopkrr/services/navigation.dart';
import 'package:shopkrr/widget/widget.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = Helper.mediaQueryHeight(context, 1);
    double width = Helper.mediaQueryWidth(context, 1);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        automaticallyImplyLeading: false,
        // leadingWidth: 30,
        // centerTitle: false,
        title: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.chevron_left_rounded,
              size: 40,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Helper.heightSizedBox(
              height * .02,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Text(
                AppConstants.createaccount,
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                softWrap: true,
              ),
            ),
            Helper.heightSizedBox(
              height * .05,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: nameTextField(context),
            ),
            Helper.heightSizedBox(
              height * .01,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: phoneTextField(context, phoneController),
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
              child:
                  confirmpasswordTextField(context, AppConstants.confirmpass),
            ),
            Helper.heightSizedBox(height * .03),
            button(
              context,
              AppConstants.signupText,
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).colorScheme.tertiary,
              () {
                push(
                    context,
                    OtpPage(
                      number: phoneController.text,
                    ));
              },
            ),
            Helper.heightSizedBox(
              height * .005,
            ),
            googleButton(context),
            Helper.heightSizedBox(
              height * .005,
            ),
            facebookButton(context),
            Helper.heightSizedBox(
              height * .02,
            ),
          ],
        ),
      ),
    );
  }
}
