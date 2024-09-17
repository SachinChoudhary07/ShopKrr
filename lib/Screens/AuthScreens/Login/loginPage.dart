// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/bottomBar/bottombar.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/services/navigation.dart';
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
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: width,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                child: Image.asset(
                  AppConstants.logoTransparent,
                  height: height / 2.5,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox(
              height: height / 26,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: emailTextField(context),
            ),
            SizedBox(
              height: height / 35,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: passwordTextField(context),
            ),
            const SizedBox(
              height: 4,
            ),
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
            SizedBox(
              height: height / 15,
            ),
            button(
              AppConstants.btntxt1,
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).colorScheme.tertiary,
              () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const BottomBarPage(),
                //     ));
                push(context, const BottomBarPage());
              },
            ),
            SizedBox(
              height: height * .02,
            ),
            googleButton(context),
            SizedBox(
              height: height * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text("Don't have an account ?",style: TextStyle(color: Theme.of(context).colorScheme.onSurface),),
                TextButton(
                  onPressed: () {},
                  child: Text("Register",style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
