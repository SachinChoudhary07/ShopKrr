import 'package:flutter/material.dart';
import 'package:shopkrr/constant/const.dart';

Widget button(txt) {
  return Container(
    height: 44,
    width: double.infinity,
    decoration: BoxDecoration(boxShadow: const [BoxShadow(offset: Offset(1, 3), blurRadius: 6, spreadRadius: 0, color: Colors.grey)], color: Primary_color, borderRadius: BorderRadius.circular(20)),
    margin: const EdgeInsets.all(12),
    child: Center(
        child: Text(
      txt,
      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 12, fontFamily: "Outfit"),
    )),
  );
}
