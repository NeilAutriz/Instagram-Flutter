//Mark Neil G. Autriz
//CMSC 23 : Exercise # 3


/*This Flutter code creates a user interface for shopping within the app. It includes an app bar with a title "Shop" 
and a search icon. Below the app bar, it displays an ExploreGrid widget, allowing users to explore shop items. 
The code utilizes Flutter's Scaffold widget for the basic page structure and a custom ShopGrid widget for displaying 
shop items. Important parts of the code, such as the app bar and the use of custom widgets, are commented for clarity.*/

import 'package:flutter/material.dart';
import 'package:sam_proj/util/shop_grid.dart'; // Importing custom ShopGrid widget

class UserShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Setting app bar background color to transparent
        elevation: 0, // No shadow for the app bar
        title: ClipRRect( // ClipRRect widget to round the corners of the container
          borderRadius: BorderRadius.circular(8), // Setting border radius for rounded corners
          child: Container(
            padding: EdgeInsets.all(8), // Adding padding to the container
            color: Colors.grey[400], // Setting background color for the container
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.grey[500],), // Search icon with grey color
                Container(
                  child: Text('Shop', style: TextStyle(color: Colors.grey[700]),), // Text widget for the shop title with grey color
                )
              ],
            ),
          ),
        ),
      ),
      body: ExploreGrid(), // Displaying explore grid using custom ExploreGrid widget
    );
  }
}
