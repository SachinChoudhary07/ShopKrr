import 'package:flutter/material.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/constant/ui_helper.dart';
import 'package:shopkrr/widget/stepperWidget.dart';
import 'package:shopkrr/widget/widget.dart';

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
        title:  Text(
          "CART",
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
         ListTile(
           leading: Helper.getImage('assets/Mask group.png'),
           title: Text("Shirt"),
           trailing: Text('2'),
         )
        ],
      ),
    );
  }
}
