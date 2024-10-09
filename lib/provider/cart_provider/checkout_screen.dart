import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/constant/ui_helper.dart';
import 'package:shopkrr/provider/cart_provider/cart_provider.dart';
import 'package:shopkrr/widget/widget.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          AppConstants.checkoutText,
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
              selectedAddress(context),
              Container(
                height: Helper.mediaQueryHeight(context, 0.6),
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
                          trailing: Text(
                            item.quantity.toString(),
                            style: const TextStyle(fontSize: 14),
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
                  AppConstants.orderNowText,
                  Theme.of(context).colorScheme.secondary,
                  ColorResources.white,
                      () {})
            ],
          );
        },
      ),
    );
  }
}

Container selectedAddress(context){
  return Container(
    margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
    decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Brooklyn Warren",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Theme.of(context).colorScheme.onSurface),
            ),
            Text(
              "4517 Washington Ave. Manchester, Kentucky 39495",
              style: TextStyle(
                  fontSize: 12, color: Theme.of(context).colorScheme.onSurface),
            ),
            Text(
              "jessica.hanson@example.com",
              style: TextStyle(
                  fontSize: 12, color: Theme.of(context).colorScheme.onSurface),
            ),
            Text(
              "(629) 555-0129",
              style: TextStyle(
                  fontSize: 12, color: Theme.of(context).colorScheme.onSurface),
            ),
          ],
        ),
        Icon(Icons.arrow_forward_ios_rounded, color: Theme.of(context).colorScheme.secondary,size: 16,)
      ],
    ),
  );
}