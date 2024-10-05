// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';

class AppConstants {
// Text
  static const String title = 'S';
  static const String heading = 'Welcome to ShopKrrr';
  static const String subTitle =
      'Shop & get updates on new products and sales with our mobile app.';
  static const String btntxt1 = 'Log In';
  static const String btntxt2 = 'Sign up';
  static const String signinText = "Sign In";
  static const String forgotText = "Forgot Password";
  static const String signupText = "Sign Up";
  static const String profile = 'Account Setting';
  static const String address = 'Address';
  static const String notifications = 'Notifications';
  static const String generalSettingText = 'General Setting';
  static const String privacySettingText = 'Privacy Setting';
  static const String wishList = 'WishList';
  static const String logout = 'Logout';
  static const String cartbtn = 'Checkout';
  static const List<String> welcomescreentext = ["CLASSY","FROM HEAD","TO TOE"];
  static const List<String> welcomescreen2text = ["FLY AWAY","WITH YOUR","STYLE"];
  static const List<String> welcomescreen3text = ["CLOTHES","FOR A BIG","PLANET"];


  // Category detail page Text
  static const String allProductText = 'All Product';
  static const String shirtText = 'Shirts';
  static const String poloText = 'Polos';
  static const String trousersText = 'Trousers';
  static const String jeansText = 'Jeans';
  static const String jacketsText = 'Jackets';
  static const String accessoriesText = 'Accessories';
  static const String shoesText = 'Shoes';
  static const String menText = 'MEN';

  // Account Page Text
  static const String accountText = 'Account';
  static const String myOrdersText = 'My Orders';
  static const String wishlistText = 'Wishlist';

  // Edit Profile Text
  static const String saveChangesText = 'Save Changes';
  static const String nameText = 'Name';
  static const String dateOfBirthText = 'Date of birth';
  static const String phoneNumberText = 'Phone Number';
  static const String genderText = 'Gender';
  static const String emailText = 'Email';
  static const String reginText = 'Region';

  // Address Page Text
  static const String addressText = 'Address';
  static const String ddNewAddressText = 'Add New Address';


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
  static const String logoTransparent = 'assets/images/ShopKrrr_back.png';
  //welcome screen images
  static const String welcome1 = 'assets/images/welcome1.png';
  static const String welcome2 = 'assets/images/welcome2.png';
  static const String welcome3 = 'assets/images/welcome3.png';

//   Category Detail Images
  static const String menCategoryImage =  'assets/images/menCategoryImage.png';

//   Account Screen Images
  static const String accountSettingIcon =  'assets/images/account_Setting_Icon.png';
  static const String generalSettingIcon =  'assets/images/general_setting_Icon.png';
  static const String notificationIcon =  'assets/images/notification_Icon.png';
  static const String privacyIcon =  'assets/images/privacy_Icon.png';
  static const String logoutIcon =  'assets/images/logout_Icon.png';
  static const String addressIcon =  'assets/images/Address_Icon.png';




//Login Page Image
  static const String loginImage= 'assets/images/loginpageimage.png';
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
