import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/ui_helper.dart';
import 'package:shopkrr/provider/loginProvider/loginProvider.dart';

Widget button(context, txt, color, txtcolor, ontap) {
  return InkWell(
    onTap: ontap,
    splashColor: Colors.transparent,
    child: Align(
      alignment: Alignment.center,
      child: Container(
        height: Helper.mediaQueryHeight(context, 1 * .05),
        width: Helper.mediaQueryWidth(context, 1 * .9),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
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
    ),
  );
}

Widget phoneTextField(BuildContext context,TextEditingController controller) {
  ThemeData theme = Theme.of(context);
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    height: 50,
    child: TextFormField(
      enableSuggestions: true,
      controller: controller,
      keyboardType: TextInputType.number,
      maxLength: 10,
      style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            color: theme.colorScheme.surface,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: theme.colorScheme.surface),
        ),
        labelText: "Phone Number",
        labelStyle: TextStyle(color: theme.colorScheme.surface),
        prefix: const Text(
          "+91  |  ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        counterText: "",
      ),
    ),
  );
}
Widget nameTextField(BuildContext context) {
  ThemeData theme = Theme.of(context);
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    height: 50,
    child: TextFormField(
      enableSuggestions: true,
      // keyboardType: TextInputType.number,
      // maxLength: 10,
      style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            color: theme.colorScheme.surface,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: theme.colorScheme.surface),
        ),
        labelText: AppConstants.entername,
        labelStyle: TextStyle(color: theme.colorScheme.surface),
        // prefix: const Text(
        //   "+91  |  ",
        //   style: TextStyle(fontWeight: FontWeight.bold),
        // ),
        // counterText: "",
      ),
    ),
  );
}

Widget passwordTextField(BuildContext context,String text) {
  ThemeData theme = Theme.of(context);

  final provider = Provider.of<LoginProvider>(context, listen: false);

  return Consumer<LoginProvider>(
    builder: (context, value, child) {
      return Container(
        height: 50,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: TextFormField(
          obscureText: provider.isobscure,
          // enableSuggestions: true,
          decoration: InputDecoration(
            hoverColor: Colors.transparent,
            isDense: false,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: theme.colorScheme.surface),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: theme.colorScheme.surface),
            ),
            labelStyle: TextStyle(color: theme.colorScheme.surface),
            suffixIcon: InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  provider.updateObscure();
                },
                child: provider.isobscure
                    ? const Icon(Icons.remove_red_eye)
                    : Container(
                        margin: const EdgeInsets.all(10),
                        // height: 50,
                        // width: 20,
                        child: Helper.getImage(AppConstants.eyeicon, width: 20),
                      )),
            labelText: text,
          ),
        ),
      );
    },
  );
}

Widget confirmpasswordTextField(BuildContext context,String text) {
  ThemeData theme = Theme.of(context);

  final provider = Provider.of<LoginProvider>(context, listen: false);

  return Consumer<LoginProvider>(
    builder: (context, value, child) {
      return Container(
        height: 50,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: TextFormField(
          obscureText: provider.isconfirmobscure,
          // enableSuggestions: true,
          decoration: InputDecoration(
            hoverColor: Colors.transparent,
            isDense: false,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: theme.colorScheme.surface),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: theme.colorScheme.surface),
            ),
            labelStyle: TextStyle(color: theme.colorScheme.surface),
            suffixIcon: InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  provider.updateConfirmObscure();
                },
                child: provider.isconfirmobscure
                    ? const Icon(Icons.remove_red_eye)
                    : Container(
                        margin: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(),
                        // height: 50,
                        // width: 20,
                        child: Helper.getImage(AppConstants.eyeicon , width: 20,color: Theme.of(context).colorScheme.onSurface),
                      )),
            labelText: text,
          ),
        ),
      );
    },
  );
}
