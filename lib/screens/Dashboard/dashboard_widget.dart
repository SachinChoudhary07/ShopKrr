import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopkrr/Screens/categories_detail/product_widget.dart';
import 'package:shopkrr/Screens/product_page/product_page.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/ui_helper.dart';
import 'package:shopkrr/provider/category_provider/categoryProvider.dart';
import 'package:shopkrr/provider/category_detail_provider/category_detail_provider.dart';
import 'package:shopkrr/provider/dashboard_provider/dashboard_provider.dart';
import 'package:shopkrr/screens/categories_detail/category_detail_screen.dart';
import 'package:shopkrr/services/navigation.dart';
import 'package:shopkrr/widget/widget.dart';

Widget carouselSlider(BuildContext context) {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  return CarouselSlider(
    items: imgList
        .map((item) => Image.network(
              item.toString(),
              width: Helper.mediaQueryWidth(context),
              fit: BoxFit.fitWidth,
              // height: 200,
            ))
        .toList(),
    options: CarouselOptions(
      // enlargeCenterPage: true,
      padEnds: false,
      autoPlay: true,
      aspectRatio: 16 / 9,
      viewportFraction: 1,
    ),
  );
}

Widget categorySlider() {
  return Consumer<CategoriesProvider>(
      builder: (context, CategoriesProvider provider, _) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppConstants.categories,
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                child: Text(
                  AppConstants.allcategories,
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Helper.heightSizedBox(16),
        SizedBox(
          height: Helper.mediaQueryHeight(
              context, .12), // Height for the list items
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: provider.category.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  push(context, CategoryDetailScreen());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          provider.category[index]['imageUrl']!,
                          height: Helper.mediaQueryHeight(context, .08),
                          width: Helper.mediaQueryHeight(context, .08),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        provider.category[index]['title']!,
                        style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  });
}

Widget hotdealsWidget() {
  return Consumer<CategoriesDetailProvider>(
      builder: (context, CategoriesDetailProvider provider, _) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                verticalDivider(context),
                Text(
                  AppConstants.hotdeal,
                  style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: Helper.mediaQueryHeight(context, 1),
            width: Helper.mediaQueryWidth(context),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of items per row
                childAspectRatio: 0.7, // Aspect ratio to control item height
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: provider.products.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    push(context, const ProductPage());
                  },
                  child: ProductCard(
                    title: provider.products[index]['title']!,
                    price: provider.products[index]['price']!,
                    imageUrl: provider.products[index]['imageUrl']!,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  });
}

Widget newArrivalWidget(context) {
  return Consumer<CategoriesDetailProvider>(
    builder: (context, CategoriesDetailProvider provider, _) {
      final products = provider.products;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Arrival",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                TextButton(
                  onPressed: () {
                  },
                  child: Text(
                    "More Product",
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 300,
            width: Helper.mediaQueryWidth(context,1),
            child: ListView.builder(
              padding: EdgeInsets.only(left: 12),
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return SizedBox(
                      height: 300,
                      width: 200,
                      child: ProductCard(
                        title: product['title']!,
                        price: product['price']!,
                        imageUrl: product['imageUrl']!,
                      ));
                }),
          )
        ],
      );
    },
  );
}

Widget onSaleWidget(context) {
  return Consumer<CategoriesDetailProvider>(
    builder: (context, CategoriesDetailProvider provider, _) {
      final products = provider.products;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    verticalDivider(context),
                    Text(
                      "ON SALE",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 300,
            width: Helper.mediaQueryWidth(context,1),
            child: ListView.builder(
                padding: EdgeInsets.only(left: 12),
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return SizedBox(
                      height: 300,
                      width: 200,
                      child: ProductCard(
                        title: product['title']!,
                        price: product['price']!,
                        imageUrl: product['imageUrl']!,
                      ));
                }),
          )
        ],
      );
    },
  );
}
