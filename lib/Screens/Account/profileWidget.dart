import 'package:flutter/material.dart';
import 'package:shopkrr/constant/const.dart';

Widget listTileWidget(icon, title, ontap) {
  return ListTile(
    onTap: ontap,
    leading: Icon(
      icon,
    ),
    trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
    title: Text(
      title,
    ),
  );
}
