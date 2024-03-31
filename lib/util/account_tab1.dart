//Mark Neil G. Autriz
//CMSC 23 : Exercise # 3


/*This Dart code modifies the AccountTab1 widget. It builds a GridView with 3 columns and displays 4 images. 
Image paths are manually specified in a list, and each image is wrapped in Padding to add spacing. The images 
are loaded using Image.asset with BoxFit.cover to ensure they cover their containers properly.*/

// Modify the AccountTab1 widget
import 'package:flutter/material.dart';

class AccountTab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4, // Manually specify the number of images
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), // Define a grid layout with 3 columns
      itemBuilder: (context, index) {
        // Manually specify the image paths
        List<String> imagePaths = [
          'images/image1.jpg',
          'images/image5.jpg',
          'images/image3.jpg',
          'images/image11.png',
        ];
        return Padding(
          padding: const EdgeInsets.all(2.0), // Padding around each image
          child: Image.asset(
            imagePaths[index], // Access image path directly from the list
            fit: BoxFit.cover, // Ensure the image covers its container
          ),
        );
      },
    );
  }
}
