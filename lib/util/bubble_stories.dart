//Mark Neil G. Autriz
//CMSC 23 : Exercise # 3

/*This Dart code defines a StatelessWidget called BubbleStories. It represents a bubble for 
displaying stories with an icon or image and text below it. The BubbleStories widget takes a 
text parameter to display the provided text in the bubble. The bubble has a fixed width and height,
and the text is placed below it with some vertical spacing. */

import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text; // Text to be displayed in the bubble

  BubbleStories({required this.text}); // Constructor to initialize the text

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // Padding around the bubble
      child: Column(
        children: [
          Container(
            width: 60, // Width of the circular bubble
            height: 60, // Height of the circular bubble
            decoration: BoxDecoration(
              shape: BoxShape.circle, // Circular shape for the bubble
              color: Colors.grey[400], // Grey color for the bubble
            ),
          ),
          SizedBox(height: 10), // Vertical spacing between the bubble and the text
          Text(text) // Text widget to display the provided text
        ],
      ),
    );
  }
}
