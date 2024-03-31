//Mark Neil G. Autriz
//CMSC 23 : Exercise # 3

/*This Flutter program replicates the functionality of the Instagram user interface. It provides a 
user account page with features such as displaying user profile information, including profile picture, bio, email, 
post count, followers count, and following count. Users can navigate between different sections of the user account 
using tabs, which include a grid view, video call, shop, and person. The interface also allows users to add stories 
with custom text and images. Additionally, it provides buttons for adding bio, editing profile, and sharing profile. 
The program serves as a graphical user interface for managing user accounts and interacting with Instagram-like features. */


//Importing necessary packages and files from the Flutter framework
import 'package:flutter/material.dart';
import 'package:sam_proj/util/account_tab1.dart';
import 'package:sam_proj/util/account_tab2.dart';
import 'package:sam_proj/util/account_tab3.dart';
import 'package:sam_proj/util/account_tab4.dart';
import 'package:sam_proj/util/bubble_storiesProfile.dart';

//Useraccount class representing the user account page
class Useraccount extends StatefulWidget {
  @override
  _UseraccountState createState() => _UseraccountState();
}

//State class for the Useraccount widget, managing its state
class _UseraccountState extends State<Useraccount> {
  //State variables
  int postCount = 4;
  int followersCount = 99999;
  int followingCount = 99999;

  @override
  Widget build(BuildContext context) {
    //Returning a DefaultTabController wrapped Scaffold widget
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'NeilAutriz', //Title of the app bar
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Profile Picture
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('images/image4.jpg'), //User's profile picture
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '$postCount', //Displaying post count
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text('Posts'), //Label for posts
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '$followersCount', //Displaying followers count
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text('Followers'), //Label for followers
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '$followingCount', //Displaying following count
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text('Following'), //Label for following
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mark Neil Autriz', //User's name
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    'Hello World! It\'s me Neil.', //User's bio
                  ),
                  Text(
                    'mgautriz@up.edu.ph', //User's email
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: TextButton(
                        onPressed: () {
                          // Implement functionality for adding bio
                          
                        },
                        child: Center(child: Text('Add Bio')), // Button to add bio
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent, // Transparent background
                          padding: EdgeInsets.all(8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: Colors.grey), // Border color
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: TextButton(
                        onPressed: () {
                          // Implement functionality for editing profile
                          
                        },
                        child: Center(child: Text('Edit Profile')), // Button to edit profile
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent, // Transparent background
                          padding: EdgeInsets.all(8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: Colors.grey), // Border color
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: TextButton(
                        onPressed: () {
                          // Implement functionality for sharing profile
                          
                        },
                        child: Center(child: Text('Share Profile')), // Button to share profile
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent, // Transparent background
                          padding: EdgeInsets.all(8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: Colors.grey), // Border color
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[400],
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add), //Icon for adding story
                            onPressed: () {
                              //Add functionality for adding story
                            },
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Add Story'), //Label for adding story
                      ],
                    ),
                  ),
                  BubbleStoriesProfile(text: 'Life🥳', imagePath: 'images/image2.jpg'), //Bubble story for Life
                  BubbleStoriesProfile(text: 'Travel🎒', imagePath: 'images/image8.jpg'), //Bubble story for Travel
                  BubbleStoriesProfile(text: 'Studies✍️', imagePath: 'images/image6.jpg'), //Bubble story for Studies
                ],
              ),
            ),
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined), //Tab icon for grid view
                ),
                Tab(
                  icon: Icon(Icons.video_call), //Tab icon for video call
                ),
                Tab(
                  icon: Icon(Icons.shop), //Tab icon for shop
                ),
                Tab(
                  icon: Icon(Icons.person), //Tab icon for person
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  AccountTab1(), //View for the first tab
                  AccountTab2(), //View for the second tab
                  AccountTab3(), //View for the third tab
                  AccountTab4(), //View for the fourth tab
                ],
              ),
            ),
          ],
        ),
        //This is used for future reference whenever gustong maginclude ng logic sa program.
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          },
          backgroundColor: Colors.blue,
          child: Icon(Icons.add), //Icon for floating action button
        ),
      ),
    );
  }
}
