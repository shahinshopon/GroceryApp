import 'package:flutter/material.dart';

Widget CustomImageContainer(String url) {
  return Container(
    height: 80,
    width: 70,
    decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        )),
    child: Image.asset(
      url,
      fit: BoxFit.cover,
    ),
  );
}
