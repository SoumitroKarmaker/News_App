import 'package:flutter/material.dart';

import 'bottom_nav_items/add_post.dart';
import 'bottom_nav_items/ads.dart';
import 'bottom_nav_items/home.dart';
import 'bottom_nav_items/poll.dart';
import 'bottom_nav_items/profile.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedItems = 0;

  List<Widget> bottomPageItems = [
    Home(),
    Ads(),
    AddPost(),
    Poll(),
    Profile(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedItems = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: bottomPageItems.elementAt(_selectedItems),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedItems,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.post_add_sharp), label: 'Ads'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_sharp), label: 'Add Post'),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart_outlined), label: 'Poll'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
