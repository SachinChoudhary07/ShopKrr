import 'package:flutter/material.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/constant/dimension.dart';


ThemeData dark = ThemeData(
  fontFamily: 'Nunito',
  primaryColor: ColorResources.whiteColor,
  secondaryHeaderColor: const Color(0xFF2CD5C4),
  brightness: Brightness.dark,
  cardColor: ColorResources.gray100,
  hintColor: ColorResources.gray30,
  disabledColor: const Color(0xFFa2a7ad),
  shadowColor: Colors.black.withOpacity(0.4),
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  }),
);
