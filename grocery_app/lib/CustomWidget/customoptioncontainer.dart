import 'package:flutter/material.dart';

Widget CustomOptionContainer(String text, double width) {
  return Container(
    height: 50,
    width: width,
    decoration: BoxDecoration(
        color: Color(0xffF1F1F1),
        borderRadius: BorderRadius.all(
          Radius.circular(13),
        )),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 15, color: Colors.black54),
      ),
    ),
  );
}
