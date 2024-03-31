//Mark Neil G. Autriz
//CMSC 23 : Exercise # 3

/*This Dart code defines a StatelessWidget called ShopGrid. It builds a GridView with 3 columns and displays 
30 grid items with a black background color. Each grid item is wrapped in Padding to add spacing around it. 
The grid layout is created using SliverGridDelegateWithFixedCrossAxisCount with 3 columns.*/


import 'package:flutter/material.dart';

class ShopGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 30, // Number of items in the grid
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), // Define a grid layout with 3 columns
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0), // Padding around each grid item
          child: Container(
            color: Colors.black54, // Background color of the grid item
          ),
        );
      },
    );
  }
}
