import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiagonosticTestScreenDua extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/bg.png',
            fit: BoxFit.cover,
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
                  'Diagonstics Tests',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 70,
            left: 20,
            right: 20,
            bottom: 0,
            child: ListView(
              children: <Widget>[
                SizedBox(height: 10),
                Spacer(),
                Text(
                  'Get Full body health checkups',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rubik',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'from the comfort of your home.',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rubik',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Up to 45% off + get 10% healthcash back',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Rubik',
                    color: Color.fromRGBO(14, 190, 127, 1),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                       
                        child: Container(
                          height: 150,
                          child: Card(
                            margin: EdgeInsets.all(7),
                            color: Colors.transparent,
                            elevation: 0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 55,
                                      height: 60,
                                      child: Card(
                                        color: Colors.blue,
                                        elevation: 4,
                                        child: Center(
                                          child: Image.asset(
                                            'images/32home.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Free home',
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'Sample pickup',
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 55,
                                      height: 60,
                                      child: Card(
                                        color: Colors.orange,
                                        elevation: 4,
                                        child: Center(
                                          child: Image.asset(
                                            'images/32reports.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'E-Reports',
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'in 24-72 hours',
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        child: Card(
                          margin: EdgeInsets.all(7),
                          color: Colors.transparent,
                          elevation: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 55,
                                    height: 60,
                                    child: Card(
                                      color: Colors.red,
                                      elevation: 4,
                                      child: Center(
                                        child: Image.asset(
                                          'images/32practo.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Practo',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Asociate labs',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 55,
                                    height: 60,
                                    child: Card(
                                      color: Colors.green,
                                      elevation: 4,
                                      child: Center(
                                        child: Image.asset(
                                          'images/32follow.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Free follow-up',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'with a doctor',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                Text(
                  'Recommend for you',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        height: 480,
                        child: Card(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: SingleChildScrollView(
                            child: Row(
                              children: [
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 12),
                                      Text(
                                        'Advanced Young Indian Health Checkup',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Rubik',
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Ideal for individuals aged 21-40 years',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Rubik',
                                          color: Color.fromRGBO(103, 114, 148, 1),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 50,
                                            vertical: 15,
                                          ),
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            side: BorderSide(color: Color.fromARGB(255, 132, 197, 134)),
                                          ),
                                        ),
                                        child: Text(
                                          '69 Test included',
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 132, 197, 134),
                                            fontWeight: FontWeight.w200,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Container(
                                        margin: EdgeInsets.only(right: 10),
                                        child: Image.asset(
                                          'images/32gambar1.png',
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 4),
                                                  Text(
                                                    '\$ 358',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(width: 8),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 4),
                                                  Text(
                                                    '\$ 330 ',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 4),
                                                  Text(
                                                    '35% off ',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.green,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Spacer(), // Spacer untuk memisahkan antara teks dan tombol
                                              Padding(
                                                padding: const EdgeInsets.only(right: 8.0), // Memberikan margin hanya pada sisi kanan
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style: ElevatedButton.styleFrom(
                                                    padding: EdgeInsets.symmetric(
                                                      horizontal: 50,
                                                      vertical: 15,
                                                    ),
                                                    backgroundColor: Colors.green,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                      side: BorderSide(color: Color.fromARGB(255, 132, 197, 134)),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Book Now',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w200,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 4),
                                                  Text(
                                                    '+ 10% Health cashback T&C',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        height: 480,
                        child: Card(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: SingleChildScrollView(
                            child: Row(
                              children: [
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 12),
                                      Text(
                                        'Working Women’s Health Checkup',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Rubik',
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Ideal for individuals aged 21-40 years',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Rubik',
                                          color: Color.fromRGBO(103, 114, 148, 1),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 50,
                                            vertical: 15,
                                          ),
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            side: BorderSide(color: Color.fromARGB(255, 132, 197, 134)),
                                          ),
                                        ),
                                        child: Text(
                                          '119 tests included',
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 132, 197, 134),
                                            fontWeight: FontWeight.w200,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Container(
                                        margin: EdgeInsets.only(right: 10),
                                        child: Image.asset(
                                          'images/32gambar2.png',
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 4),
                                                  Text(
                                                    '\$ 387',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(width: 8),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 4),
                                                  Text(
                                                    '\$ 345 ',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 4),
                                                  Text(
                                                    '35% off ',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.green,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 8.0),
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style: ElevatedButton.styleFrom(
                                                    padding: EdgeInsets.symmetric(
                                                      horizontal: 50,
                                                      vertical: 15,
                                                    ),
                                                    backgroundColor: Colors.green,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                      side: BorderSide(color: Color.fromARGB(255, 132, 197, 134)),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Book Now',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w200,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 4),
                                                  Text(
                                                    '+ 10% Health cashback T&C',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        height: 480,
                        child: Card(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: SingleChildScrollView(
                            child: Row(
                              children: [
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 12),
                                      Text(
                                        'Active Professional Health Checkup',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Rubik',
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Ideal for individuals aged 21-40 years',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Rubik',
                                          color: Color.fromRGBO(103, 114, 148, 1),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 50,
                                            vertical: 15,
                                          ),
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            side: BorderSide(color: Color.fromARGB(255, 132, 197, 134)),
                                          ),
                                        ),
                                        child: Text(
                                          '100 tests included',
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 132, 197, 134),
                                            fontWeight: FontWeight.w200,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Container(
                                        margin: EdgeInsets.only(right: 10),
                                        child: Image.asset(
                                          'images/32gambar3.png',
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 4),
                                                  Text(
                                                    '\$ 457',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(width: 8),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 4),
                                                  Text(
                                                    '\$ 411 ',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 4),
                                                  Text(
                                                    '35% off ',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.green,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 8.0),
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style: ElevatedButton.styleFrom(
                                                    padding: EdgeInsets.symmetric(
                                                      horizontal: 50,
                                                      vertical: 15,
                                                    ),
                                                    backgroundColor: Colors.green,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                      side: BorderSide(color: Color.fromARGB(255, 132, 197, 134)),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Book Now',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w200,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 4),
                                                  Text(
                                                    '+ 10% Health cashback T&C',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}