import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/Dashboard/dashboard_widget.dart';
import 'package:shopkrr/constant/ui_helper.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "ShoppKarr",
          style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(onPressed: () {}, icon:  Icon(Icons.shopping_bag,color: Theme.of(context).colorScheme.onPrimary,))
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
              width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            carouselSlider(context),
            Helper.heightSizedBox(20),
            categorySlider(),
            Helper.heightSizedBox(20),
            hotdealsWidget(),
            Helper.heightSizedBox(20),
            newArrivalWidget(context),
            Helper.heightSizedBox(20),
            onSaleWidget(context),

            ],
          ),
        ),
      ),
    );
  }
}
