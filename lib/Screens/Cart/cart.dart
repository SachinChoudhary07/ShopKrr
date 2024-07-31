import 'package:flutter/material.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/color_resources.dart';
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
      appBar: AppBar(),
      // bottomSheet: BottomSheet(
      //   onClosing: () {},
      //   builder: (context) => Container(
      //     height: 80,
      //     color: Colors.green,
      // ),
      // ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            decoration:
                BoxDecoration(
                boxShadow: const [BoxShadow(offset: Offset(1, 3), blurRadius: 6, spreadRadius: 0, color: Colors.grey)], color: ColorResources.Primary_color, borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              horizontalTitleGap: 4,
              minVerticalPadding: 0,
              contentPadding: const EdgeInsets.all(0),
              leading: ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
                child: Image.asset(
                  "assets/images/ShopKrrr.png",
                  fit: BoxFit.cover,
                  width: 80,
                  height: double.infinity,
                ),
              ),
              title: const Text("New Product"),
              subtitle: const Text("Acha hai yeh bhi"),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      height: 30,
                      decoration: const BoxDecoration(
                          boxShadow: [BoxShadow(offset: Offset(1, 3), blurRadius: 6, spreadRadius: 0, color: Colors.grey)], color: ColorResources.Primary_color, shape: BoxShape.circle),
                      child:  Icon(
                        Icons.add,
                        color:ColorResources.Primary_color,
                      ),
                    ),
                    const Text("4"),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      height: 30,
                      decoration: const BoxDecoration(
                          boxShadow: [BoxShadow(offset: Offset(1, 3), blurRadius: 6, spreadRadius: 0, color: Colors.grey)], color: ColorResources.Primary_color, shape: BoxShape.circle),
                      child: const Icon(Icons.remove, color: ColorResources.Primary_color),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          // button(cartbtn, Primary_color, Primary_color, colorwhite, () {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => const BottomBarPage(),
            //     ));
          // }),
        ],
      ),
    );
  }
}
