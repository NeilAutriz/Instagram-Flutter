//Mark Neil G. Autriz
//CMSC 23 : Exercise # 3

/*The code creates a Flutter application that replicates the user interface of Instagram, 
featuring sections for displaying stories and user posts, with interactive elements for 
adding, liking, and sharing posts.*/


// Importing necessary packages and custom widgets
import 'package:flutter/material.dart';
import 'package:sam_proj/util/bubble_stories.dart'; // Custom widget for displaying stories
import 'package:sam_proj/util/user_posts.dart'; // Custom widget for displaying user posts

class UserHome extends StatelessWidget {
  // List of usernames for demonstration purposes
  final List<String> people = [
    "NeilAutriz", "MarkNeil", "Zuckerberg", "ElonMusk", "Bill Gates", "Zundar Pichai", "Joe Biden"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent app bar background
        elevation: 0, // No shadow
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Instagram title
            Text(
              'Instagram',
              style: TextStyle(
                color: Colors.black, // Black text color
                fontWeight: FontWeight.bold, // Bold font weight
              ),
            ),
            // Icons for adding, liking, and sharing posts
            Row(
              children: [
                Icon(Icons.add), // Add icon
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Icon(Icons.favorite), // Favorite icon
                ),
                Icon(Icons.share), // Share icon
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          // Section for displaying stories
          Container(
            height: 130, // Fixed height for the container
            child: ListView.builder(
              scrollDirection: Axis.horizontal, // Horizontal scrolling
              itemCount: people.length, // Number of items in the list
              itemBuilder: (context, index) {
                return BubbleStories(text: people[index]); // Displaying stories using custom BubbleStories widget
              },
            ),
          ),

          // Section for displaying user posts
          Expanded(
            child: ListView.builder(
              itemCount: people.length, // Number of items in the list
              itemBuilder: (context, index) {
                return UserPosts(
                  name: people[index], // Passing the username to the UserPosts widget
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
