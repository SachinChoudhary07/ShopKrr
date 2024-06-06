// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/Account/profileWidget.dart';
import 'package:shopkrr/constant/const.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / 10),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius: 45),
              SizedBox(height: 10),
              Text(
                "Sachin",
                style: TextStyle(fontSize: 20, fontFamily: 'Lora'),
              ),
              SizedBox(height: 10),
              Text(
                "sachin.dev@gmail.com",
                style: TextStyle(fontSize: 14, fontFamily: 'Lora'),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 20),
          listTileWidget(Icons.person, profile, () {}),
          listTileWidget(Icons.location_city_sharp, address, () {}),
          listTileWidget(Icons.favorite_outline_sharp, wishList, () {}),
          listTileWidget(Icons.logout, logout, () {}),
        ],
      ),
    );
  }
}
