import 'package:flutter/material.dart';
import 'package:shopkrr/constant/color_resources.dart';

ThemeData dark = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    brightness: Brightness.dark,

    // chnage when theme is changed
    primary: ColorResources.primaryColorDark,
    onSurface: ColorResources.white,
    onPrimaryContainer: ColorResources.darkgrey,

    //same in dark light theme
    secondary: ColorResources.secondaryColorDark,
    tertiary: ColorResources.white,
    onPrimary: ColorResources.grey,
    surface: ColorResources.grey,
  ),
);
