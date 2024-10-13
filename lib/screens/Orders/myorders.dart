import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopkrr/provider/order_provider/myorder_provider.dart';

class MyOrdersWidget extends StatelessWidget {
  const MyOrdersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MyOrdersProvider>(
      builder: (context, MyOrdersProvider provider, _) {
        return ListView.builder(
          itemCount: provider.products.length,
          itemBuilder: (context, index) {
            Map<String, String> product = provider.products[index];
            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    leading: Image.asset(
                      product["imageUrl"]!,
                      width: 50,
                      // height: 120,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      product["title"]!,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface),
                    ),
                    subtitle: Text(
                      "${product['price']}",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                  ),
                ),
                 Divider(
                   endIndent: 30,
                   indent: 30,
                   color: Theme.of(context).colorScheme.onPrimary,thickness: 0.8,),
              ],
            );
          },
        );
      },
    );
  }
}
