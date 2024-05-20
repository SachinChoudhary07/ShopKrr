import 'package:flutter/material.dart';
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
                style: const TextStyle(fontFamily: 'Outfit', fontSize: 160, fontWeight: FontWeight.bold),
              ),
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
            button(btntxt1),
            const Text("Or"),
            button(btntxt2),
          ],
        ),
      ),
    );
  }
}
