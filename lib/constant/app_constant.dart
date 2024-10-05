// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';

class AppConstants {
// Text
  static const String title = 'S';
  static const String heading = 'Welcome to ShopKrrr';
  static const String subTitle =
      'Shop & get updates on new products and sales with our mobile app.';


      //Login Textt
  static const String btntxt1 = 'SIGN IN';
  static const String btntxt2 = 'SIGN UP';
  static const String signinText = "SIGN IN";
  static const String forgotText = "Forgot Password";
  static const String signupText = "SIGN UP";
  static const String googlesignin = "SIGN IN WITH GOOGLE";
  static const String facebooksignin = "SIGN IN WITH FACEBOOK";
  static const String createaccount = "CREATE YOUR ACCOUNT";
  static const String password = "Password";
  static const String confirmpass = "Confirm Password";
  static const String entername = "Enter Full Name";
  static const String submit = "Submit";
  static const String otpsentto = "We have sent the code verification to your number";

// categories

  static const String categories = "CATEGORIES";
  static const String men = "MEN";
  static const String women = "WOMEN";
  static const String kids = "KIDS";
  static const String bags = "BAGS";
  static const String shoes = "SHOES";
  static const String accessories = "ACCESSORIES";



  static const String profile = 'Profile';
  static const String address = 'Address';
  static const String wishList = 'WishList';
  static const String logout = 'Logout';
  static const String cartbtn = 'Checkout';
  static const List<String> welcomescreentext = ["CLASSY","FROM HEAD","TO TOE"];
  static const List<String> welcomescreen2text = ["FLY AWAY","WITH YOUR","STYLE"];
  static const List<String> welcomescreen3text = ["CLOTHES","FOR A BIG","PLANET"];

  // Errors Messages
  static const String error = 'ERROR';
  static const String emailRequired = "Email field can't be empty";
  static const String passwordRequired = "Password field can't be empty";
  static const String passwordRequiredConfirmation =
      "Password confirmation field cant be empty";
  static const String requiredPasswordLength = "Password length must be 6.";
  static const String enterValidEmail = 'Please enter a valid email';
  static const String notMatch = 'Password did not must match';

  // Images
  String Logo = 'assets/images/ShopKrrr.png';
  static const String googleLogo = 'assets/images/google.png';
  static const String facebooklogo = 'assets/images/facebooklogo.png';
  static const String logoTransparent = 'assets/images/ShopKrrr_back.png';
  //welcome screen images
  static const String welcome1 = 'assets/images/welcome1.png';
  static const String welcome2 = 'assets/images/welcome2.png';
  static const String welcome3 = 'assets/images/welcome3.png';

//Login Page Image
  static const String loginImage= 'assets/images/loginpageimage.png';
  static const String eyeicon= 'assets/images/eye.png';

  //Categories images
  static const String mencategory= 'assets/images/men.png';
  static const String womencategory= 'assets/images/women.png';
  static const String kidscategory= 'assets/images/kids.png';
  static const String bagscategory= 'assets/images/bags.png';
  static const String shoescategory= 'assets/images/shoes.png';
  static const String accessoriescategory= 'assets/images/accessories.png';

  // Icons
  static const String appLogo = 'assets/icons/app_logo.png';
}

getColor(BuildContext context, Color darkModeColor, Color lightModeColor) =>
    isDarkMode(context) ? darkModeColor : lightModeColor;

bool isDarkMode(BuildContext context) {
  if (Theme.of(context).brightness == Brightness.light) {
    return false;
  } else {
    return true;
  }
}
