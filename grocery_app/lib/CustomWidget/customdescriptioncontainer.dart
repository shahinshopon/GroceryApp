import 'package:flutter/material.dart';

Widget CustomDescriptionContainer(String parcentage, String text) {
  return Container(
    height: 50,
    width: 80,
    decoration: BoxDecoration(
        color: Color(0xffF1F1F1),
        borderRadius: BorderRadius.all(
          Radius.circular(13),
        )),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          parcentage,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 15, color: Colors.black54),
        ),
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 12, color: Colors.black54),
        ),
      ],
    ),
  );
}
