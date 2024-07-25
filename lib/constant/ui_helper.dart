import 'package:flutter/material.dart';
import 'package:shopkrr/constant/color_resources.dart';

class Helper {
  //Sizes
  static SizedBox heightSizedBox([double height = 5]) => SizedBox(height: height);
  static SizedBox widthSizedBox([double width = 5]) => SizedBox(width: width);
  static double mediaQueryWidth(BuildContext context, [double value = 1.0]) => MediaQuery.of(context).size.width * value;
  static double mediaQueryHeight(BuildContext context, [double value = 1.0]) => MediaQuery.of(context).size.height * value;

  //Padding
  static EdgeInsets customPadding([double padding = 15.0]) => EdgeInsets.all(padding);

  //Decoration
  static BoxShadow customBoxShadow() => BoxShadow(
        blurRadius: 16,
        offset: const Offset(0, 8),
        spreadRadius: 0,
        color: ColorResources.gray80.withOpacity(0.05),
      );

  static BorderRadius borderRadius([double radius = 10.0]) => BorderRadius.all(Radius.circular(radius));

  static border([Color color = Colors.transparent]) => OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(color: color, width: 2),
      );

  //Image
  static getImage(String imagePath, {BoxFit boxFit = BoxFit.cover, double height = 40, double width = 40}) => Image.asset(imagePath, fit: boxFit, height: height, width: width);
  static getImageWithColor(String imagePath, {BoxFit boxFit = BoxFit.cover, double height = 40, double width = 40, Color color = ColorResources.green40}) => Image.asset(
        imagePath,
        fit: boxFit,
        height: height,
        width: width,
        color: color,
      );
}
