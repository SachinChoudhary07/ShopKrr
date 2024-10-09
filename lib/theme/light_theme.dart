import 'package:flutter/material.dart';
import 'package:shopkrr/constant/color_resources.dart';

ThemeData light = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
    brightness: Brightness.light,

    // change when theme is changed
    primary: ColorResources.primaryColorLight,
    onSurface: ColorResources.black,
    onPrimaryContainer: ColorResources.lightgrey,

    //same in light and dark theme
    secondary: ColorResources.secondaryColorLight,
    tertiary: ColorResources.white,
    onPrimary: ColorResources.grey,
    surface: ColorResources.lightgrey,
  ),
);
