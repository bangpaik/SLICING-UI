import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:slicing_ui/screen_pages/17login_screen01.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenSize.width,
            height: screenSize.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(111, 127, 161, 1),
                  Color.fromRGBO(83, 97, 132, 1),
                ],
              ),
            ),
          ),
          Container( // Overlay for side navigation
            width: screenSize.width * 0.7, // Adjust width as needed
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(111, 127, 161, 1),
                  Color.fromRGBO(83, 97, 132, 1),
                ],
              ),
            ),// Adjust opacity as needed
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('images/profile.png'),
                          SizedBox(width: 10), // Adding space between image and text
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abdullah Mamun',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.phone, color: Colors.white, size: 16),
                                  SizedBox(width: 5), // Adding space between icon and text
                                  Text(
                                    '0130-527300',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                ListTile(
                  title: Text('Item 1', style: TextStyle(color: Colors.white)),
                  onTap: () {
                    // Update UI based on item selected.
                  },
                ),
                ListTile(
                  title: Text('Item 2', style: TextStyle(color: Colors.white)),
                  onTap: () {
                    // Update UI based on item selected.
                  },
                ),
                // Add more list tiles for additional menu items
              ],
            ),
          ),
        ],
      ),
    );
  }
}
