import 'package:flutter/material.dart';
import 'package:shopkrr/constant/color_resources.dart';

ThemeData dark = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    brightness: Brightness.dark,
    primary: ColorResources.primaryColorDark,
    secondary: ColorResources.secondaryColorDark,
    tertiary: ColorResources.white,
    onPrimary: ColorResources.grey,
    onSurface: ColorResources.white,
    surface: ColorResources.lightgrey

  ),

  // fontFamily: 'Nunito',
  
  // primaryColorDark: ColorResources.Primary_color,
  // secondaryHeaderColor: const Color(0xFF2CD5C4),
  // cardColor: const Color.fromARGB(255, 241, 96, 35),
  // hintColor: ColorResources.colorwhite,

  // disabledColor: const Color(0xFFa2a7ad),
  // shadowColor: Colors.black.withOpacity(0.4),
  // pageTransitionsTheme: const PageTransitionsTheme(builders: {
  //   TargetPlatform.android: ZoomPageTransitionsBuilder(),
  //   TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
  //   TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  // }),
);
