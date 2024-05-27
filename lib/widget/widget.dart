import 'package:flutter/material.dart';

Widget button(txt, color, borderColor , txtcolor, ontap) {
  return InkWell(
    onTap: ontap,
    child: Container(
      height: 44,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          boxShadow: const [BoxShadow(offset: Offset(1, 3), blurRadius: 6, spreadRadius: 0, color: Colors.grey)],
          color: color,
          borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.all(12),
      child: Center(
          child: Text(
        txt,
        style:  TextStyle(color: txtcolor, fontWeight: FontWeight.w700, fontSize: 15, fontFamily: "Outfit"),
      )),
    ),
  );
}


Widget emailTextField() {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    height: 50,
    child: TextFormField(
      enableSuggestions: true,
      decoration: const InputDecoration(fillColor: Colors.red, border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))), labelText: "Enter Phone Number"),
    ),
  );
}

Widget passwordTextField() {
  return Container(
    height: 50,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    child: TextFormField(
      enableSuggestions: true,
      decoration: const InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))), labelText: "Enter Password"),
    ),
  );
}
