import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_ui/screen_pages/21menu_screen.dart';
import 'package:slicing_ui/screen_pages/24add_record_screen.dart';

class MyDoctors extends StatelessWidget {
  const MyDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '9:41', // Contoh waktu
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
                      // Tambahkan widget untuk baterai di sini
                      Image.asset(
                        "images/battery.png",
                        width: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 5,
              right: 0,
              child: Container(

                padding: EdgeInsets.symmetric(horizontal: 10), // Padding dalam kotak

                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => AddRecord()),
                        // );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: Size( 0, 40),
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Radius button
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 16,
                          color: Color.fromRGBO(103, 114, 148, 1),
                        ),
                      ),
                    ),


                    SizedBox(width: 15), // Jarak antara ikon dan teks
                    Text(
                      'My Doctors',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),





            Positioned(
              left: 16,
              top: 90,
              right: 16,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(

              margin: EdgeInsets.only(top: 150),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 2,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: const Color(0x14000000),
                            offset: Offset(0, 0),
                            blurRadius: 20,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Image.asset(
                                  'images/finddoctor1.png',
                                  height: 100,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dr.Tranquilli',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    // Atur jarak antara elemen
                                    Text(
                                      'Specialist Medicine',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: const Color(0xff0ebe7f),
                                      ),
                                    ),
                                    Text(
                                      '7 Years experience ',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: const Color(0xff677294),
                                      ),
                                    ),
                                    SizedBox(
                                        height: 10),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          color: const Color(0xff0ebe7f),
                                          size: 16,
                                        ),
                                        Text(
                                          '87 %',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: const Color(0xff677294),
                                          ),
                                        ),
                                        SizedBox(width:10),
                                        Icon(
                                          Icons.circle,
                                          color: const Color(0xff0ebe7f),
                                          size: 16,
                                        ),

                                        Text(
                                          '69 Patient Stories',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: const Color(0xff677294),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -3,
                                right: -3,
                                child: Image.asset(
                                  'images/likelove.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Next Available',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: const Color(0xff0ebe7f),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                },
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff0ebe7f),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '10:00 AM tomorrow',
                            style: TextStyle(
                              fontSize: 13,
                              color: const Color(0xff677294),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width -
                          32,
                      padding: EdgeInsets.all(
                          16),
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: const Color(0x14000000),
                            offset: Offset(0, 0),
                            blurRadius: 20,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Image.asset(
                                  'images/finddoctor2.png',
                                  height: 100,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dr. Bonebrake',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                        height: 5),
                                    Text(
                                      'Specilist Dentist',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: const Color(0xff0ebe7f),
                                      ),
                                    ),
                                    Text(
                                      '8 Years experience ',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: const Color(0xff677294),
                                      ),
                                    ),
                                    SizedBox(
                                        height: 10),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          color: const Color(0xff0ebe7f),
                                          size: 16,
                                        ),
                                        Text(
                                          '74 %',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: const Color(0xff677294),
                                          ),
                                        ),
                                        Icon(
                                          Icons.circle,
                                          color: const Color(0xff0ebe7f),
                                          size: 16,
                                        ),
                                        Text(
                                          '78 Patient Stories',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: const Color(0xff677294),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -3,
                                right: -3,
                                child:
                                Image.asset(
                                  'images/love.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Next Available',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: const Color(0xff0ebe7f),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                },
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff0ebe7f),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '12:00 AM tomorrow',
                            style: TextStyle(
                              fontSize: 13,
                              color: const Color(0xff677294),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width -
                          32,
                      padding: EdgeInsets.all(
                          16),
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: const Color(0x14000000),
                            offset: Offset(0, 0),
                            blurRadius: 20,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Image.asset(
                                  'images/finddoctor3.png',
                                  height: 100,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dr. Luke Whitesell',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                        height: 5),
                                    Text(
                                      'Specilist Cardiology',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: const Color(0xff0ebe7f),
                                      ),
                                    ),
                                    Text(
                                      '7 Years experience ',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: const Color(0xff677294),
                                      ),
                                    ),
                                    SizedBox(
                                        height: 10),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          color: const Color(0xff0ebe7f),
                                          size: 16,
                                        ),
                                        Text(
                                          '59 %',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: const Color(0xff677294),
                                          ),
                                        ),
                                        Icon(
                                          Icons.circle,
                                          color: const Color(0xff0ebe7f),
                                          size: 16,
                                        ),
                                        Text(
                                          '86 Patient Stories',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: const Color(0xff677294),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -3,
                                right: -3,
                                child: Image.asset(
                                  'images/likelove.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Next Available',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: const Color(0xff0ebe7f),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                },
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff0ebe7f),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '11:00 AM tomorrow',
                            style: TextStyle(
                              fontSize: 13,
                              color: const Color(0xff677294),
                            ),
                          ),
                        ],
                      ),
                    ),



                  ],
                ),
              ),
            ),




          ],
        ),
      ),
    );
  }
}
