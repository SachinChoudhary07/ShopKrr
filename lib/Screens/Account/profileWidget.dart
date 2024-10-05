import 'package:flutter/material.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/constant/ui_helper.dart';

Widget listTileWidget(image, title, ontap, context) {
  return ListTile(
    contentPadding: EdgeInsets.zero,
    onTap: ontap,
    leading: Helper.getImage(image,height: 22,width: 24),
    trailing:  Icon(Icons.arrow_forward_ios_rounded, size: 16,color: Theme.of(context).colorScheme.onSurface,),
    title: Text(
      title,
      style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
    ),
  );
}
