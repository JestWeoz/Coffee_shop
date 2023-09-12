import 'package:coffee_shop/components/bottom_nav_bar.dart';
import 'package:coffee_shop/const.dart';
import 'package:flutter/material.dart';

import 'CartPage.dart';
import 'ShopPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIdex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIdex = index;
    });
  }

  final List<Widget> _page = [
    // shop page
    ShopPage(),
    // cart page
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _page[_selectedIdex],
    );
  }
}
