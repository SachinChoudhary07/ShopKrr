import 'package:flutter/material.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/dimension.dart';
import 'package:shopkrr/constant/ui_helper.dart';

Widget googleButton(BuildContext context) {
  return InkWell(
    onTap: () {},
    // splashColor: Colors.transparent,
    child: Align(
      alignment: Alignment.center,
      child: Container(
        height: Helper.mediaQueryHeight(context, 1 * .05),
        width: Helper.mediaQueryWidth(context, 1 * .9),
        decoration: BoxDecoration(
            // border: Border.all(color: borderColor),
            border: Border.all(
                color: Theme.of(context).colorScheme.surface, width: 2),
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.all(12),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                AppConstants
                    .googleLogo, // Add the Google logo image in your assets folder
                height: 20.0,
              ),
              Helper.widthSizedBox(12.0),
              Text(
                AppConstants.googlesignin,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: Dimensions.fontSizeDefault,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget facebookButton(BuildContext context) {
  return InkWell(
    onTap: () {},
    // splashColor: Colors.transparent,
    child: Align(
      alignment: Alignment.center,
      child: Container(
        height: Helper.mediaQueryHeight(context, 1 * .05),
        width: Helper.mediaQueryWidth(context, 1 * .9),
        decoration: BoxDecoration(

            // border: Border.all(color: borderColor),
            border: Border.all(
                color: Theme.of(context).colorScheme.surface, width: 2),
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.all(8),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                AppConstants
                    .facebooklogo, // Add the Google logo image in your assets folder
                height: 20.0,
              ),
              Helper.widthSizedBox(12.0),
              Text(
                AppConstants.facebooksignin,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: Dimensions.fontSizeDefault,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
