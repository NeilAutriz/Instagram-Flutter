//Mark Neil G. Autriz
//CMSC 23 : Exercise # 3

/*This Flutter code defines a StatelessWidget called UserSearch, which builds a UI for 
searching within the app. It consists of an AppBar with a search bar containing a search 
icon and placeholder text. Below the AppBar, it displays an ExploreGrid widget, allowing 
users to explore content within the app. The code utilizes Flutter's Scaffold widget for 
the basic page structure and custom widgets for specific UI elements like the search bar 
and explore grid.
*/

import 'package:flutter/material.dart';
import 'package:sam_proj/util/explore_grid.dart'; //Importing custom ExploreGrid widget

class UserSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, //Transparent background color
        elevation: 0, //No shadow
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8), //Border radius for rounded corners
          child: Container(
            padding: EdgeInsets.all(8), //Padding for the container
            color: Colors.grey[400], //Grey background color
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.grey[500],), //Search icon
                Container(
                  child: Text('Search', style: TextStyle(color: Colors.grey[700]),), //Text widget for search placeholder
                )
              ],
            ),
          ),
        ),
      ),
      body: ShopGrid(), //Displaying explore grid using custom ExploreGrid widget
    );
  }
}
