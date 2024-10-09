import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/bottomBar/bottombar.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/constant/dimension.dart';
import 'package:shopkrr/constant/ui_helper.dart';
import 'package:shopkrr/services/navigation.dart';
import 'package:shopkrr/widget/widget.dart';

class OrderSuccessPage extends StatelessWidget {
  const OrderSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.onPrimaryContainer),
                child: Center(
                  child: Icon(
                    Icons.local_shipping,
                    color: Theme.of(context).colorScheme.secondary,
                    // size: Helper.mediaQueryWidth(context, .25),
                    size: 100,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 150,
                child: Container(
                    decoration: const BoxDecoration(
                        //  color: ColorResources.green
                        ),
                    child: const Icon(
                      Icons.check_circle,
                      color: ColorResources.green,
                    )),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              AppConstants.ordersuccess,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: Dimensions.fontSizeExtraOverLarge,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              AppConstants.ordersuccesstext2,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontSize: Dimensions.fontSizeDefault,
                // fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: button(
                context,
                AppConstants.myOrdersText,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.tertiary,
                () {}),
          ),
          // const Text("continue shopping"),
          continueButton(context)
        ],
      ),
    );
  }
}

Widget continueButton(BuildContext context) {
  return InkWell(
    onTap: () {
      push(context, const BottomBarPage());
    },
    splashColor: Colors.transparent,
    child: Align(
      alignment: Alignment.center,
      child: Container(
        height: Helper.mediaQueryHeight(context, 1 * .05),
        width: Helper.mediaQueryWidth(context, 1 * .9),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: Theme.of(context).colorScheme.onPrimary, width: 2),
        ),
        margin: const EdgeInsets.all(12),
        child: Center(
            child: Text(
          AppConstants.continueshopping,
          style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.w700,
              fontSize: 15,
              fontFamily: "Outfit"),
        )),
      ),
    ),
  );
}
