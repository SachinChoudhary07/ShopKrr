import 'package:flutter/material.dart';
import 'package:shopkrr/constant/color_resources.dart';

ThemeData light = ThemeData(
  useMaterial3: true,
    colorScheme: const ColorScheme.light(
    brightness: Brightness.light,
    primary: ColorResources.primaryColorLight,
    secondary: ColorResources.secondaryColorLight,
    tertiary: ColorResources.white,
    onPrimary: ColorResources.grey,
    onSurface: ColorResources.black,
     surface: ColorResources.lightgrey
  ),

);
