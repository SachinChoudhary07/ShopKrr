import 'package:flutter/material.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/constant/dimension.dart';

ThemeData light = ThemeData(
  primaryColor: ColorResources.Primary_color,
  // secondaryHeaderColor: const Color(0xff2CD5C4),
  brightness: Brightness.light,
  cardColor: ColorResources.Primary_color,
  hintColor: ColorResources.gray60,
  disabledColor: ColorResources.gray80.withOpacity(0.32),
  focusColor: ColorResources.Primary_color,
  shadowColor: ColorResources.gray80,
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  }),

);
