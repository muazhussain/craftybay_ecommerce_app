import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../cart/cart_screen.dart';
import '../category/category_screen.dart';
import '../home/home_screen.dart';
import '../wishlist/wishlist_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  final List<Widget> _screens = const [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    WishlistScreen(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Categories ',
            icon: Icon(Icons.grid_view_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(Icons.shopping_cart_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Wishlist',
            icon: Icon(Icons.favorite_outline),
          ),
        ],
        selectedItemColor: primaryColor,
        unselectedItemColor: greyColor.withOpacity(0.5),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) {
          _selectedIndex = value;
          setState(() {});
        },
        currentIndex: _selectedIndex,
      ),
    );
  }
}
