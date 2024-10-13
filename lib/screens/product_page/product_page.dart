import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopkrr/Screens/categories_detail/product_widget.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/constant/ui_helper.dart';
import 'package:shopkrr/provider/product_provider/product_provider.dart';
import 'package:shopkrr/widget/widget.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomSheet: _bottomSheet(context),
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Consumer<ProductProvider>(builder: (context, provider, child) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headerWidget(context, provider),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Printed cotton shirt',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                colorOptions(provider),
                const SizedBox(height: 16),
                sizeOptions(provider),
                DescriptionWidget(),
                const SizedBox(height: 16),
                relatedProducts(context),
                Helper.heightSizedBox(100)
              ],
            ),
          );
        }
        ),
      ),
    );
  }

  // Color options widget
  Widget colorOptions(ProductProvider provider) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            AppConstants.colorText,
            style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface, fontSize: 18),
          ),
          const SizedBox(width: 10),
          ...provider.availableColors.map((color) {
            return GestureDetector(
              onTap: () => provider.selectColor(color),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                  border: provider.selectedColor == color
                      ? Border.all(width: 2, color: Colors.black)
                      : null,
                ),
                child: const SizedBox(
                  width: 24,
                  height: 24,
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }

  // Size options widget
  Widget sizeOptions(ProductProvider provider) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(AppConstants.sizeText,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 18)),
          const SizedBox(width: 10),
          ...provider.availableSizes.map((size) {
            return GestureDetector(
              onTap: () => provider.selectSize(size),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: provider.selectedSize == size
                      ? Colors.black
                      : Colors.white,
                  border: Border.all(
                    color: provider.selectedSize == size
                        ? Colors.black
                        : Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  size,
                  style: TextStyle(
                    color: provider.selectedSize == size
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }

  Stack headerWidget(BuildContext context, ProductProvider provider) {
    return Stack(
      children: [
        // Image slider
        SizedBox(
          height: 300,
          width: double.infinity,
          child: PageView.builder(
            itemCount: provider.imagePaths.length,
            onPageChanged: (index) {
              provider.updateImageIndex(index); // Update the index in provider
            },
            itemBuilder: (context, index) {
              return Image.asset(
                provider.imagePaths[index],
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        // Back button
        Positioned(
          top: 18,
          left: 16,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context); // Back button functionality
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
        // Favorite icon
        Positioned(
          top: 18,
          right: 20,
          child: GestureDetector(
            onTap: () {
              // Add favorite functionality here if needed
            },
            child: const Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
        // Image slider indicator
        Positioned(
          bottom: 10,
          right: 16,
          child: Row(
            children: List.generate(provider.imagePaths.length, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: provider.currentIndex == index
                      ? Colors.orange
                      : Colors.grey,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }

  Container _bottomSheet(context) {
    return Container(
      height: 70,
      width: Helper.mediaQueryWidth(context),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            spreadRadius: 4,
            blurRadius: 8,
            color: ColorResources.grey.withOpacity(0.3),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "\$ 45.00",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: Helper.mediaQueryWidth(context, 0.5),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(40),
              ),
              margin: const EdgeInsets.all(12),
              child: const Center(
                child: Text(
                  AppConstants.addToCartText,
                  style: TextStyle(
                    color: ColorResources.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    fontFamily: "Outfit",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding DescriptionWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppConstants.descriptionText,
            style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.w600,
                fontSize: 18),
          ),
          Helper.heightSizedBox(),
          const Text(
              'Purus in massa tempor nec feugiat. Congue nisi vitae suscipit tellus mauris a diam. Nam aliquam sem et tortor. Quis risus sed vulputate odio ut enim. Ultrices dui sapien eget mi proin sed libero enim sed.'),
          Helper.heightSizedBox(),
          Image(
            image: const AssetImage(AppConstants.mencategory),
            width: Helper.mediaQueryWidth(context),
          ),
          Helper.heightSizedBox(),
          Image(
            image: const AssetImage(AppConstants.mencategory),
            width: Helper.mediaQueryWidth(context),
          )
        ],
      ),
    );
  }
}

Widget relatedProducts(context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            verticalDivider(context),
            Text(
              AppConstants.relatedProductText,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
          ],
        ),
        Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            height: 200,
            width: Helper.mediaQueryWidth(context, 0.9),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 100,
                  width: Helper.mediaQueryWidth(context, 0.4),
                  child: const ProductCard(
                    title: "T-Shirt",
                    price: '\$ 499',
                    imageUrl: 'assets/Mask group.png',
                  ),
                );
              },
            ))
      ],
    ),
  );
}
