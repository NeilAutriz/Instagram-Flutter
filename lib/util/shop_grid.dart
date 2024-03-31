//Mark Neil G. Autriz
//CMSC 23 : Exercise # 3

/*This Dart code defines a StatelessWidget called ExploreGrid. It builds a GridView with 2 columns and displays 20 grid items 
with a grey background color. Each grid item is wrapped in Padding to add spacing around it. The grid layout is created using 
SliverGridDelegateWithFixedCrossAxisCount with 2 columns.*/

import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20, // Number of items in the grid
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), // Define a grid layout with 2 columns
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0), // Padding around each grid item
          child: Container(
            color: Colors.grey[600], // Background color of the grid item
          ),
        );
      },
    );
  }
}
