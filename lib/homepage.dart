//Mark Neil G. Autriz
//CMSC 23 : Exercise # 3

/*This Dart code defines a StatefulWidget called Homepage, which serves as the main page of the app with a bottom navigation bar. 
It contains tabs for the home, search, profile, and shop pages. The selected tab is managed using the _selectedIndex variable, and 
the content of each tab is stored in the _children list. The bottom navigation bar is configured to switch between tabs using the 
_navigateBottomNavBar function.*/

import 'package:flutter/material.dart';
import 'package:sam_proj/pages/account.dart';
import 'package:sam_proj/pages/home.dart';
import 'package:sam_proj/pages/search.dart';
import 'package:sam_proj/pages/shop.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  int _selectedIndex = 2; // Index of the selected tab

  // Function to handle navigation between tabs
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  // List of widgets for each tab
  final List<Widget> _children = [
    UserHome(), // Home page
    UserSearch(), // Search page
    Useraccount(), // Account page
    UserShop(), // Shop page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex], // Display the selected tab
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Current index of the bottom navigation bar
        onTap: _navigateBottomNavBar, // Function to handle tab selection
        type: BottomNavigationBarType.fixed, // Fixed type for the bottom navigation bar
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // Home icon
            label: 'Home', // Label for the home tab
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), // Search icon
            label: 'Search', // Label for the search tab
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // Profile icon
            label: 'Profile', // Label for the profile tab
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop), // Shop icon
            label: 'Shop', // Label for the shop tab
          ),
        ],
      ),
    );
  }
}
