// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopkrr/widget/widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
        child: Column(
          children: [
            const Text(
              "Sign In",
              style: TextStyle(fontFamily: 'Lora', fontSize: 26),
            ),
            emailTextField(),
            
            passwordTextField()
          ],
        ),
      ),
    );
  }
}
