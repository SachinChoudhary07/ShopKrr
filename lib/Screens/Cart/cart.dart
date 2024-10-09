import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/color_resources.dart';
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
      ),
    );
  }
}
