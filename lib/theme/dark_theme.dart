import 'package:flutter/material.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/constant/dimension.dart';


ThemeData dark = ThemeData(
  fontFamily: 'Nunito',
  primaryColor: ColorResources.green40,
  // secondaryHeaderColor: const Color(0xFF2CD5C4),
  brightness: Brightness.dark,
  cardColor: ColorResources.gray100,
  hintColor: ColorResources.gray30,
  // disabledColor: const Color(0xFFa2a7ad),
  // shadowColor: Colors.black.withOpacity(0.4),
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  }),

  textTheme: const TextTheme(
    labelLarge: TextStyle(color: Color(0xFFFFFFFF)),
    displayLarge: TextStyle(fontWeight: FontWeight.w300, fontSize: Dimensions.paddingSizeLarge),
    displayMedium: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.fontSizeDefault),
    displaySmall: TextStyle(fontWeight: FontWeight.w500, fontSize: Dimensions.fontSizeDefault),
    headlineMedium: TextStyle(fontWeight: FontWeight.w600, fontSize: Dimensions.fontSizeDefault),
    headlineSmall: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.fontSizeDefault),
    titleLarge: TextStyle(fontWeight: FontWeight.w800, fontSize: Dimensions.fontSizeDefault),
    bodySmall: TextStyle(fontWeight: FontWeight.w900, fontSize: Dimensions.fontSizeDefault),
    titleMedium: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
    bodyMedium: TextStyle(fontSize: 12.0),
    bodyLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
  ),
);
