import 'package:flutter/material.dart';
import 'package:grocery_app/UI/BottomNavBar/Pages/cart.dart';
import 'package:grocery_app/UI/BottomNavBar/Pages/discover.dart';
import 'package:grocery_app/UI/BottomNavBar/Pages/home.dart';
import 'package:grocery_app/UI/BottomNavBar/Pages/menu.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class BottomNavController extends StatefulWidget {
  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int index = 0;
  final _pages = [Home(), Search(), Cart(), Profile()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: TitledBottomNavigationBar(
          curve: Curves.bounceIn,
          activeColor: Colors.orange,
          inactiveColor: Colors.black87,
          indicatorColor: Colors.orange,
          currentIndex: index,
          items: [
            TitledNavigationBarItem(title: Text('Home'), icon: Icons.home),
            TitledNavigationBarItem(title: Text('Search'), icon: Icons.search),
            TitledNavigationBarItem(title: Text('Cart'), icon: Icons.shopping_cart),
            TitledNavigationBarItem(title: Text('Profile'), icon: Icons.person),
          ],
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
        ),
        body: _pages[index],
      ),
    );
  }
}
