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
  static const String signupText = "Sign Up";

  static const String googlesignin = "SIGN IN WITH GOOGLE";
  static const String facebooksignin = "SIGN IN WITH FACEBOOK";
  static const String createaccount = "CREATE YOUR ACCOUNT";
  static const String password = "Password";
  static const String confirmpass = "Confirm Password";
  static const String entername = "Enter Full Name";
  static const String submit = "Submit";
  static const String otpsentto = "We have sent the code verification to your number";




  //Home Page 
  

// categories

  static const String categories = "CATEGORIES";
  static const String men = "MEN";
  static const String women = "WOMEN";
  static const String kids = "KIDS";
  static const String bags = "BAGS";
  static const String shoes = "SHOES";
  static const String accessories = "ACCESSORIES";

  //orders page
  static const String ordersuccess = "ORDER SUCCESS";
  static const String ordersuccesstext2 = "Dolor magna eget est lorem ipsum dolor \nsit amet consectetur.";
  static const String myOrdersText = 'My Orders';
  static const String continueshopping = 'CONTINUE SHOPPING';

//cart constants
  static const String success = "SUCCESS";
  static const String viewcart = "VIEW CART";

  static const String profile = 'Profile';
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
  static const String facebooklogo = 'assets/images/facebooklogo.png';
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
