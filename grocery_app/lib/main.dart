import 'package:flutter/material.dart';
import 'package:grocery_app/UI/BottomNavBar/bottomnavcontroller.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavController(),
    );
  }
}
