import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

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
              image: DecorationImage(
                image: AssetImage('images/bg.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 9,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '9:41',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 9,
            left: 0,
            right: 11,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.signal_cellular_alt,
                      color: Colors.black,
                      size: 14,
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.signal_wifi_4_bar,
                      color: Colors.black,
                      size: 14,
                    ),
                    SizedBox(width: 5),
                    Image.asset(
                      "images/battery.png",
                      width: 20,
                    )
                    // Icons.battery_90,
                    // color: Colors.black,
                  ],
                ),
              ),
            ),
          ),


          Positioned(
            left: 16,
            top: 45,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Image.asset(
                    'images/tombol_back.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  'Privacy policy',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),


          Positioned(
            left: 16,
            top: 105,
            child: Row(
              children: [
                Text(
                  'Doctor Hunt Apps Privacy Policy',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.only(left: 16, top: 140),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words believable. It is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more ',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey, // Ubah warna font menjadi abu-abu
                    ),
                    maxLines: null,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.only(left: 16, top: 285),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      margin: EdgeInsets.only(top: 4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green, // Warna bullets hijau
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'The standard chunk of lorem Ipsum used since 1500s is reproduced below for those interested. ',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15), // Spasi antara bullets
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      margin: EdgeInsets.only(top: 4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green, // Warna bullets hijau
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum. The point of using.',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15), // Spasi antara bullets
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      margin: EdgeInsets.only(top: 4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green, // Warna bullets hijau
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted.',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15), // Spasi antara bullets
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      margin: EdgeInsets.only(top: 4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green, // Warna bullets hijau
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'The point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted.',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.only(left: 16, top: 500),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'It is a long established fact that reader distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established.',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey, // Ubah warna font menjadi abu-abu
                    ),
                    maxLines: null,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
