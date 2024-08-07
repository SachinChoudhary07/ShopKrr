// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';

class AppConstants {

// Text
  static const String title = 'S';
  static const String heading = 'Welcome to ShopKrrr';
  static const String subTitle = 'Shop & get updates on new products and sales with our mobile app.';
  static const String btntxt1 = 'Log In';
  static const String btntxt2 = 'Sign up';
  static const String signinText = "Sign In";
  static const String forgotText = "Forgot Password";
  static const String signupText = "Sign Up";
  static const String profile = 'Profile';
  static const String address = 'Address';
  static const String wishList = 'WishList';
  static const String logout = 'Logout';
  static const String cartbtn = 'Checkout';

  // Errors Messages
  static const String error = 'ERROR';
  static const String emailRequired = "Email field can't be empty";
  static const String passwordRequired = "Password field can't be empty";
  static const String passwordRequiredConfirmation = "Password confirmation field cant be empty";
  static const String requiredPasswordLength = "Password length must be 6.";
  static const String enterValidEmail = 'Please enter a valid email';
  static const String notMatch = 'Password did not must match';

  // Images
 String Logo = 'assets/images/ShopKrrr.png';
 static const String logoTransparent = 'assets/images/ShopKrrr_back.png';

  // Icons
  static const String appLogo = 'assets/icons/app_logo.png';
}


getColor(BuildContext context, Color darkModeColor, Color lightModeColor) => isDarkMode(context) ? darkModeColor : lightModeColor;

bool isDarkMode(BuildContext context) {
  if (Theme.of(context).brightness == Brightness.light) {
    return false;
  } else {
    return true;
  }
}
