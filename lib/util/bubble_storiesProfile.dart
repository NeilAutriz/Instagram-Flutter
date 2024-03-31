//Mark Neil G. Autriz
//CMSC 23 : Exercise # 3

/*This Dart code defines a StatelessWidget called BubbleStoriesProfile. It represents a circular profile bubble 
with an image and text below it. The BubbleStoriesProfile widget takes a text parameter to display below the profile 
image and an imagePath parameter to specify the image path. The profile bubble has a fixed width and height, and the 
image is loaded from the provided imagePath with BoxFit.cover to cover the circular area. The text is placed below 
the profile bubble with some vertical spacing.*/

import 'package:flutter/material.dart';

class BubbleStoriesProfile extends StatelessWidget {
  final String text; // Text to be displayed below the profile image
  final String imagePath; // Image path for the profile image

  BubbleStoriesProfile({required this.text, required this.imagePath}); // Constructor to initialize text and imagePath

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // Padding around the profile bubble
      child: Column(
        children: [
          Container(
            width: 60, // Width of the circular profile bubble
            height: 60, // Height of the circular profile bubble
            decoration: BoxDecoration(
              shape: BoxShape.circle, // Circular shape for the profile bubble
              image: DecorationImage(
                image: AssetImage(imagePath), // Load image from the provided imagePath
                fit: BoxFit.cover, // Cover the circular area with the image
              ),
            ),
          ),
          SizedBox(
            height: 10, // Vertical spacing between the profile bubble and the text
          ),
          Text(text), // Text widget to display the provided text
        ],
      ),
    );
  }
}
