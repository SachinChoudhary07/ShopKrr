import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';
import 'package:shopkrr/Screens/Account/profileWidget.dart';
import 'package:shopkrr/Screens/Account/profile_screen.dart';
import 'package:shopkrr/Screens/Address/address_screen.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/constant/ui_helper.dart';
import 'package:shopkrr/provider/account_provider/account_provider.dart';
import 'package:shopkrr/screens/Notification/notification.dart';
import 'package:shopkrr/services/navigation.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildProfileSection(context),
            Helper.heightSizedBox(20),
            _buildMenuOption(
              icon: Icons.shopping_bag,
              text: AppConstants.myOrdersText,
            ),
            Helper.heightSizedBox(20),
            _buildMenuOption(
              icon: Icons.favorite,
              text: AppConstants.wishlistText,
            ),
            Helper.heightSizedBox(20),
            _buildListTile(AppConstants.accountSettingIcon, AppConstants.profile,(){
              push(context, const ProfileScreen());
            }),
            _buildListTile(AppConstants.notificationIcon, AppConstants.notifications,(){
              push(context, const NotificationPage());
            }),
            _buildListTile(AppConstants.addressIcon, AppConstants.address,(){
              push(context, const AddressScreen());
            }),
            _buildListTile(AppConstants.generalSettingIcon, AppConstants.generalSettingText,(){}),
            _buildListTile(AppConstants.privacyIcon, AppConstants.privacySettingText,(){}),
            _buildListTile(AppConstants.logoutIcon, AppConstants.logout,(){}),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      automaticallyImplyLeading: false,
      title:  Text(
        AppConstants.accountText,
        textAlign: TextAlign.center,
        style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
      ),
      actions: [
        Consumer<AccountProvider>(
          builder: (context, provider, child) {
            return FlutterSwitch(
              width: 50.0,
              height: 30.0,
              valueFontSize: 12.0,
              toggleSize: 20.0,
              value: provider.isDark,
              borderRadius: 30.0,
              padding: 2.0,
              activeColor: Colors.orange,
              inactiveColor: Colors.grey,
              activeIcon: const Icon(
                Icons.wb_sunny,
                color: Colors.orange,
                size: 20,
              ),
              inactiveIcon: const Icon(
                Icons.nightlight_round,
                color: Colors.black,
                size: 20,
              ),
              onToggle: (val) {
                provider.toggleSwitch();
              },
            );
          },
        ),
        Helper.widthSizedBox(10),
      ],
    );
  }

  Widget _buildProfileSection(BuildContext context) {
    return InkWell(
      onTap: () {
        push(context, const ProfileScreen());
      },
      child:  Row(
        children: [
          const CircleAvatar(
            radius: 33,
            backgroundImage: AssetImage(AppConstants.logoTransparent),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Shopkrrr",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Lora',
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              Text(
                "Shopkrrr@gmail.com",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Lora',
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMenuOption({required IconData icon, required String text}) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.surface),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          Helper.widthSizedBox(10),
          Text(
            text,
            style:  TextStyle(color: Theme.of(context).colorScheme.onSurface),
          )
        ],
      ),
    );
  }

  Widget _buildListTile(String iconPath, String title, ontap) {
    return listTileWidget(iconPath, title, ontap , context);
  }
}
