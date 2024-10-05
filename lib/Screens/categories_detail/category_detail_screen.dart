import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopkrr/Screens/categories_detail/product_widget.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/ui_helper.dart';
import 'package:shopkrr/provider/category_detail_provider/category_detail_provider.dart';

class CategoryDetailScreen extends StatefulWidget {
  const CategoryDetailScreen({super.key});

  @override
  State<CategoryDetailScreen> createState() => _CategoryDetailScreenState();
}

class _CategoryDetailScreenState extends State<CategoryDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Consumer<CategoriesDetailProvider>(
            builder: (context, CategoriesDetailProvider provider, _) {
          return Column(
            children: [
              headerWidget(context),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 10),
                child: GestureDetector(
                  onTap: () =>
                      showFilterBottomSheet(context), // Opens the bottom sheet
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          provider.selectedCategory,
                          style:  TextStyle(
                              fontSize: 16, color: Theme.of(context).colorScheme.onSurface),
                        ),
                         Icon(
                          Icons.arrow_drop_down,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(child: gridViewWidget(context, provider))
            ],
          );
        }),
      ),
    );
  }

  void showFilterBottomSheet(BuildContext context) {
    final provider =
        Provider.of<CategoriesDetailProvider>(context, listen: false);

    showModalBottomSheet(
      backgroundColor: Theme.of(context).colorScheme.primary,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisSize: MainAxisSize.min, // Adjusts height based on content
              children: [
                // Reusable ListTiles
                buildCategoryTile(
                  isSelected:
                      provider.selectedCategory == AppConstants.allProductText,
                  onTap: () {
                    provider.setSelectedCategory(AppConstants.allProductText);
                    Navigator.pop(context);
                  },
                  context: context,
                  title: AppConstants.allProductText,
                ),
                buildCategoryTile(
                  context: context,
                  title: AppConstants.shirtText,
                  isSelected:
                      provider.selectedCategory == AppConstants.shirtText,
                  onTap: () {
                    provider.setSelectedCategory(AppConstants.shirtText);
                    Navigator.pop(context);
                  },
                ),
                buildCategoryTile(
                  context: context,
                  title: AppConstants.poloText,
                  isSelected:
                      provider.selectedCategory == AppConstants.poloText,
                  onTap: () {
                    provider.setSelectedCategory(AppConstants.poloText);
                    Navigator.pop(context);
                  },
                ),
                buildCategoryTile(
                  context: context,
                  title: AppConstants.jeansText,
                  isSelected:
                      provider.selectedCategory == AppConstants.jeansText,
                  onTap: () {
                    provider.setSelectedCategory(AppConstants.jeansText);
                    Navigator.pop(context);
                  },
                ),
                buildCategoryTile(
                  context: context,
                  title: AppConstants.jacketsText,
                  isSelected:
                      provider.selectedCategory == AppConstants.jacketsText,
                  onTap: () {
                    provider.setSelectedCategory(AppConstants.jacketsText);
                    Navigator.pop(context);
                  },
                ),
                buildCategoryTile(
                  context: context,
                  title: AppConstants.trousersText,
                  isSelected:
                      provider.selectedCategory == AppConstants.trousersText,
                  onTap: () {
                    provider.setSelectedCategory(AppConstants.trousersText);
                    Navigator.pop(context);
                  },
                ),
                buildCategoryTile(
                  context: context,
                  title: AppConstants.shoesText,
                  isSelected:
                      provider.selectedCategory == AppConstants.shoesText,
                  onTap: () {
                    provider.setSelectedCategory(AppConstants.shoesText);
                    Navigator.pop(context);
                  },
                ),
                buildCategoryTile(
                  context: context,
                  title: AppConstants.accessoriesText,
                  isSelected:
                      provider.selectedCategory == AppConstants.accessoriesText,
                  onTap: () {
                    provider.setSelectedCategory(AppConstants.accessoriesText);
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget buildCategoryTile({
  required BuildContext context,
  required String title,
  required bool isSelected,
  required VoidCallback onTap,
}) {
  return ListTile(
    title: Text(
      title,
      style:  TextStyle(color: Theme.of(context).colorScheme.onSurface),
    ),
    trailing: Icon(
      isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
      color: Theme.of(context).colorScheme.secondary,
    ),
    onTap: onTap,
  );
}

Padding gridViewWidget(
    BuildContext context, CategoriesDetailProvider provider) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: Helper.mediaQueryHeight(context, 0.8),
      width: Helper.mediaQueryWidth(context),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of items per row
          childAspectRatio: 0.7, // Aspect ratio to control item height
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: provider.products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            title: provider.products[index]['title']!,
            price: provider.products[index]['price']!,
            imageUrl: provider.products[index]['imageUrl']!,
          );
        },
      ),
    ),
  );
}


Stack headerWidget(BuildContext context) {
  return Stack(
    children: [
      Container(
        height: 200,
        width: double.infinity,
        color: Colors.red,
        // child: Helper.getImage(AppConstants.menCategoryImage),
      ),
      Positioned(
        top: 18,
        left: 16,
        child: GestureDetector(
          onTap: () {
            // Handle back navigation or any action you want on arrow tap
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 24,
          ),
        ),
      ),
      const Positioned(
        bottom: 0,
        left: 16,
        child: Text(
          AppConstants.menText,
          style: TextStyle(
            fontSize: 40, // Large text size for the "MEN"
            fontWeight: FontWeight.bold,
            color: Colors.white, // Make text white for visibility on image
          ),
        ),
      ),
    ],
  );
}