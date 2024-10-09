import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/Orders/myorders.dart';
import 'package:shopkrr/constant/app_constant.dart';

import 'package:provider/provider.dart';
import 'package:shopkrr/provider/orders/myorder_provider.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> with SingleTickerProviderStateMixin {
  late TabController _tabController; // Declare the TabController
  String _appBarTitle = AppConstants.myOrdersText; // Initial app bar title

  @override
  void initState() {
    super.initState();

    // Initialize the TabController
    _tabController = TabController(length: 2, vsync: this);

    // Listen for tab changes and update the app bar title
    _tabController.addListener(() {
      if (_tabController.indexIsChanging == false) { // Prevent firing multiple times
        setState(() {
          _appBarTitle = _tabController.index == 0
              ? AppConstants.myOrdersText
              : AppConstants.wishlistText;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.chevron_left_sharp,
            size: 40,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        title: Text(_appBarTitle), // Dynamic app bar title
      ),
      body: Column(
        children: <Widget>[
          // Tab bar
          ButtonsTabBar(
            controller: _tabController, // Attach the TabController
            contentPadding: const EdgeInsets.symmetric(horizontal: 30),
            radius: 25,
            contentCenter: true,
            borderWidth: 1,
            borderColor: Colors.transparent,
            labelSpacing: 10,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            unselectedBackgroundColor: Theme.of(context).colorScheme.primary,
            unselectedLabelStyle:
                TextStyle(color: Theme.of(context).colorScheme.onSurface),
            labelStyle: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
            ),
            width: 180,
            unselectedBorderColor: Theme.of(context).colorScheme.onPrimary,
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.shopping_bag_rounded,
                  size: 22,
                ),
                text: AppConstants.myOrdersText,
              ),
              Tab(
                icon: Icon(
                  Icons.favorite,
                  size: 22,
                ),
                text: AppConstants.wishlistText,
              ),
            ],
          ),
          // Ensure TabBarView takes the remaining space
          Expanded(
            child: TabBarView(
              controller: _tabController, // Attach the TabController to TabBarView
              children: const [
                MyOrdersWidget(), // Your custom widget for orders
                WishlistWidget(), // Your custom widget for wishlist
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose(); // Always dispose the controller to avoid memory leaks
    super.dispose();
  }
}



// import 'package:flutter/material.dart';

class WishlistWidget extends StatelessWidget {
  const WishlistWidget({super.key});

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
                  margin: const EdgeInsets.symmetric(vertical: 8),
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
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).colorScheme.onSurface),
                          child: IconButton(
                            onPressed: () {
                              // Add to cart action
                            },
                            icon: Icon(
                              Icons.shopping_bag_outlined,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary)
                              // color: Theme.of(context).colorScheme.onSurface
                              ),
                          child: IconButton(
                            onPressed: () {
                              // Delete item action
                            },
                            icon: const Icon(Icons.close),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                  child: Divider(
                    color: Theme.of(context).colorScheme.onPrimary,
                    thickness: 2,
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
