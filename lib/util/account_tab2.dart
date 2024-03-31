//Mark Neil G. Autriz
//CMSC 23 : Exercise # 3

/*This Dart code modifies the AccountTab2 widget. It builds a GridView with 3 columns and displays user posts 
stored in the userPosts list. Each image is loaded using Image.asset with BoxFit.cover to ensure they cover their 
containers properly, and Padding is added around each image for spacing.*/

// Modify the AccountTab2 widget
import 'package:flutter/material.dart';

class AccountTab2 extends StatelessWidget {
  final List<String> userPosts = [
    'images/image10.jpg',
    'images/image9.jpg',
    'images/image4.jpg',
    'images/image5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: userPosts.length, // Number of user posts
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), // Define a grid layout with 3 columns
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0), // Padding around each image
          child: Image.asset(
            userPosts[index], // Access image path directly from the list
            fit: BoxFit.cover, // Ensure the image covers its container
          ),
        );
      },
    );
  }
}
