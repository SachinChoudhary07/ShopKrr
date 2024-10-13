import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/ui_helper.dart';
import 'package:shopkrr/main.dart';
import 'package:shopkrr/provider/category_provider/categoryProvider.dart';
import 'package:shopkrr/screens/categories_detail/category_detail_screen.dart';
import 'package:shopkrr/services/navigation.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        automaticallyImplyLeading: false,
        // leadingWidth: 30,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.chevron_left_sharp,
            size: 40,
          ),
        ),
        title: Text(
          AppConstants.categories,
          style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
        ),
      ),
      body: Consumer<CategoriesProvider>(
          builder: (context, CategoriesProvider provider, _) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Helper.heightSizedBox(20),
            Expanded(
              child: ListView.builder(
                  itemCount: provider.category.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      push(context, CategoryDetailScreen());
                    },
                    child: categoryCard(
                      context,
                          provider.category[index]['title']!,
                          provider.category[index]['imageUrl']!,
                        ),
                  )),
            )
          ],
        );
      }),
    );
  }
}



Widget categoryCard(BuildContext context, String title, String image) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    height: 200,
    // width: 340,
    child: Center(
      child: Stack(
        children: [
          Image(
            image: AssetImage(image),
          ),
          Positioned(
            left: 25,
            bottom: 40,
            child: Text(
              title,
              style:  TextStyle(
                
                // color: c
                color: Colors.transparent,
                fontSize: 40,
                decoration: TextDecoration.underline,
                // height: 2,

                decorationThickness: 2.5,
                decorationColor: Theme.of(context).colorScheme.tertiary,
                letterSpacing: 0,
                shadows:  [
      Shadow(
        offset: const Offset(0, -10), // Controls the vertical offset
        color: Theme.of(context).colorScheme.tertiary,   // Background color to create a gap effect
      ),
    ],
                
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
