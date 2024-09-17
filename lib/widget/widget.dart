import 'package:flutter/material.dart';
import 'package:shopkrr/constant/app_constant.dart';

Widget button(txt, color, txtcolor, ontap) {
  return InkWell(
    onTap: ontap,
    splashColor: Colors.transparent,
    child: Container(
      height: 44,
      width: double.infinity,
      decoration: BoxDecoration(
          // border: Border.all(color: borderColor),
          // boxShadow: const [
          //   BoxShadow(
          //       offset: Offset(1, 3),
          //       blurRadius: 2,
          //       spreadRadius: 0,
          //       color: ColorResources.Primary_color)
          // ],
          color: color,
          borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.all(12),
      child: Center(
          child: Text(
        txt,
        style: TextStyle(
            color: txtcolor,
            fontWeight: FontWeight.w700,
            fontSize: 15,
            fontFamily: "Outfit"),
      )),
    ),
  );
}

Widget googleButton(BuildContext context) {
  return InkWell(
    onTap: () {},
    // splashColor: Colors.transparent,
    child: Container(
      height: 44,
      width: double.infinity,
      decoration: BoxDecoration(
        
          // border: Border.all(color: borderColor),
          border: Border.all(
              color: Theme.of(context).colorScheme.onPrimary, width: 2),
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.all(12),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AppConstants
                  .googleLogo, // Add the Google logo image in your assets folder
              height: 24.0,
            ),
            const SizedBox(width: 12.0),
            Text(
              'Sign in with Google',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget emailTextField(BuildContext context) {
   ThemeData theme =  Theme.of(context);
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    height: 50,
    child: TextFormField(
      enableSuggestions: true,
      keyboardType: TextInputType.number,
      maxLength: 10,
      style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
           decoration: InputDecoration(

                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: theme.colorScheme.surface,),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: theme.colorScheme.surface),
                ),
                labelText: "Phone Number",
                labelStyle: TextStyle(
                  color: theme.colorScheme.surface
                ),
                prefix: const Text(
                  "+91  |  ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                counterText: "",
              ),
    ),
  );
}
//  InputDecoration(
//         enabled: true,
//         hintText: "Phone Number",
//         border: const OutlineInputBorder(
//             borderRadius: BorderRadius.all(Radius.circular(20))),
//         labelText: "Enter Phone Number",
//         enabledBorder: const OutlineInputBorder(
//             borderRadius: BorderRadius.all(Radius.circular(20))),
//         labelStyle: TextStyle(
//  color: Theme.of(context).colorScheme.surface
//             ),
//       ),

Widget passwordTextField(BuildContext context) {
   ThemeData theme =  Theme.of(context);
  return Container(
    height: 50,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    child: TextFormField(
      enableSuggestions: true,
      decoration:  InputDecoration(
           border:  const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius:  const BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: theme.colorScheme.surface),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: theme.colorScheme.surface),
                ),
               
                labelStyle: TextStyle(
                  color: theme.colorScheme.surface
                ),
          labelText: "Enter Password"),
    ),
  );
}
