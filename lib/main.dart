//Mark Neil G. Autriz
//CMSC 23 : Exercise # 3

/*This Dart code defines a StatelessWidget called MyApp, which is the root of the application. 
It creates an instance of MaterialApp, which is the main entry point for the Flutter application. 
MaterialApp configures various aspects of the app, such as the initial route, theme, and whether 
to display the debug banner. In this case, it sets Homepage as the initial route, hides the debug 
banner, and sets the primary theme color to grey.*/

import 'package:flutter/material.dart';
import 'homepage.dart'; // Importing the Homepage widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hide debug banner
      home: Homepage(), // Set Homepage as the initial route
      theme: ThemeData(primarySwatch: Colors.grey), // Set primary theme color
    );
  }
}
