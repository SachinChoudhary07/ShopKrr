import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/constant/dimension.dart';
import 'package:shopkrr/constant/ui_helper.dart';
import 'package:shopkrr/provider/cart_provider/checkout_screen.dart';
import 'package:shopkrr/services/navigation.dart';
import 'package:shopkrr/widget/stepperWidget.dart';
import 'package:shopkrr/widget/widget.dart';
import '../../provider/cart_provider/cart_provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "CART",
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Consumer<CartProvider>(
        builder: (context, cartProvider, child) {
          return Column(
            children: [
              Container(
                height: Helper.mediaQueryHeight(context, 0.65),
                child: ListView.builder(
                  itemCount: cartProvider.cartItems.length,
                  itemBuilder: (context, index) {
                    final item = cartProvider.cartItems[index];
                    return Column(
                      children: [
                        ListTile(
                          leading: Image.asset(item.imagePath),
                          title: Text(
                            item.name,
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.onSurface),
                          ),
                          subtitle: Text(
                            '\$${item.price.toStringAsFixed(2)}',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.remove,
                                  size: 18,
                                ),
                                onPressed: () {
                                  if (item.quantity > 1) {
                                    cartProvider.updateQuantity(
                                        index, item.quantity - 1);
                                  }
                                },
                              ),
                              Text(
                                item.quantity.toString(),
                                style: const TextStyle(fontSize: 14),
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.add,
                                  size: 18,
                                ),
                                onPressed: () {
                                  cartProvider.updateQuantity(
                                      index, item.quantity + 1);
                                },
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          endIndent: 20,
                          indent: 20,
                          color: ColorResources.grey.withOpacity(0.4),
                        )
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppConstants.totalText,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    // Helper.widthSizedBox(),
                    Text(
                      "\$49.00",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              button(
                  context,
                  AppConstants.proceedToCheckoutText,
                  Theme.of(context).colorScheme.secondary,
                  ColorResources.white,
                  () {
                    push(context, CheckoutScreen());
                  })
            ],
          );
        },
      body: Column(
        children: [
         ListTile(
           leading: Helper.getImage('assets/Mask group.png'),
           title: const Text("Shirt"),
           trailing: const Text('2'),
         )
        ],
      ),
    );
  }
}

void _showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,

    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: const RoundedRectangleBorder(
          // borderRadius: BorderRadius.circular(20), // Rounded corners
        ),
        contentPadding: const EdgeInsets.all(20), // Padding around content
        content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.close)),
          ),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.onPrimaryContainer),
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    color: Theme.of(context).colorScheme.secondary,
                    // size: Helper.mediaQueryWidth(context, .25),
                    size: 100,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 90,
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
              AppConstants.success,
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
            padding: const EdgeInsets.only(top: 30,left: 10,right: 10),
            child: button(
                context,
                AppConstants.viewcart,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.tertiary,
                () {}),
          ),
          // const Text("continue shopping"),
          // continueButton(context)
        ],
      )
      );
    },
  );
}
