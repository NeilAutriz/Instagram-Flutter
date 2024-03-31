//Mark Neil G. Autriz
//CMSC 23 : Exercise # 3

/*This Dart code defines a StatelessWidget called UserPosts. It represents a user's post in a social media feed. The UserPosts 
widget includes the user's profile photo, name, post content, like, comment, share buttons, a section displaying users who liked 
the post, and comments. The post content, like, comment, and share buttons are placeholders and can be customized as needed. The 
user's name and profile photo are provided as input parameters to the widget.*/

import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name; // Name of the user who made the post

  UserPosts({required this.name}); // Constructor to initialize the name

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Profile PHOTO of the user who posted
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // Name of the user who posted
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),
        // Post content
        Container(
          height: 350, // Height of the post content
          color: Colors.grey[300], // Background color of the post content
        ),
        // Buttons and comments section
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite), // Like button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline), // Comment button
                  ),
                  Icon(Icons.share), // Share button
                ],
              ),
              Icon(Icons.bookmark), // Bookmark button
            ],
          ),
        ),
        // Display the users who liked the post
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                'Elon Musk', // Sample user who liked the post
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text(
                'others', // Placeholder for other users who liked the post
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        // Display comments
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'mngautriz', // Sample commenter username
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      'Hello! I graduated BSCS which allowed me to move in USA and Australia as a Software Engineer.'), // Sample comment
              ],
            ),
          ),
        ),
      ],
    );
  }
}
