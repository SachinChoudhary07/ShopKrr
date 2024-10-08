import 'package:flutter/material.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/constant/ui_helper.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key, required this.image, required this.title});
  final String image;
  final List<String> title;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(children: [
      Image(
        width: Helper.mediaQueryWidth(context),
        image: AssetImage(image),
      ),
      Positioned(
        bottom: height * .25,
        left: width * .1,
        child: Text(
          "${title[0]} \n${title[1]} \n${title[2]}",
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold,color: ColorResources.colorwhite),
          
          textAlign: TextAlign.left,
        ),
      )
    ]);
  }
}
